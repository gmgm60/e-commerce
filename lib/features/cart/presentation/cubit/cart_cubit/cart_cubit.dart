import 'package:bloc/bloc.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:ecommerce/features/cart/domain/use_cases/confirm_order.dart';
import 'package:ecommerce/features/cart/domain/use_cases/edit_cart.dart';
import 'package:ecommerce/features/cart/domain/use_cases/get_cart.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'cart_state.dart';
//TODO add discount price after get real api

@injectable
class CartCubit extends Cubit<CartState> {
  final Logger _logger;
  final GetCart _getCart;
  final EditCart _editCart;
  final ConfirmOrder _confirmOrder;

  // using cart as Map to don't make duplicate values
  final Map<int, CartItem> cart = {};
  int editedProductId = -1;
  int animatedListCount = 0;

  CartCubit(this._getCart, this._editCart, this._logger, this._confirmOrder)
      : super(CartState.init());

  Future<void> addToCart({required Product product, required int count}) async {
    editedProductId = product.id;
    emit(CartState.loading());
    cart[product.id] = CartItem(product: product, count: count);
    final List<CartItem> cartList = cart.values.toList();
    final result = await _editCart(cartList);
    result.fold(
      (failure) => emit(CartState.error(errMsg: failure.message)),
      (unit) => emit(CartState.done()),
    );
    editedProductId = -1;
  }

  Future<void> getCart() async {
    emit(CartState.loading());
    final result = await _getCart(NoParams());
    result.fold(
      (failure) => emit(CartState.error(errMsg: failure.message)),
      (cart) {
        this.cart.clear();
        for (var cartItem in cart) {
          this.cart[cartItem.product.id] = cartItem;
        }
        emit(CartState.done());
        _logger.v("Cart Length = ${this.cart.length}");
      },
    );
  }

  bool isInCart({required int productId}) {
    return cart.containsKey(productId);
  }

  Future<void> editCart({required Map<int, CartItem> cart}) async {
    final List<CartItem> cartList = cart.values.toList();
    final result = await _editCart(cartList);
    result.fold(
      (failure) => emit(CartState.error(errMsg: failure.message)),
      (unit) {
        this.cart.clear();
        this.cart.addAll(cart);
        emit(CartState.done());
      },
    );
  }

  int productCount({required int productId}) {
    return cart[productId]?.count ?? 1;
  }

  void editCount({required int productId, required int count}) {
    if (cart[productId] != null && count > 0 && count <= cart[productId]!.product.quantity ) {
      editedProductId = productId;
      emit(CartState.loading());
      cart[productId] = cart[productId]!.copyWith(count: count);
      emit(CartState.done());
      editedProductId = -1;
    }
  }

  void deleteProduct({required int productId}) {
    emit(CartState.done(refresh: null));
    cart.remove(productId);
    animatedListCount--;
    emit(CartState.done(refresh: 1));
  }

  double productsPrice() {
    double products = 0;
    for (CartItem cartItem in cart.values) {
      products += cartItem.count * cartItem.product.price;
    }

    return products;
  }

  double shippingPrice() {
    double shipping = cart.isNotEmpty ? 50 : 0;
    for (CartItem cartItem in cart.values) {
      shipping += cartItem.count * 2;
    }
    return shipping;
  }

  double totalPrice() => shippingPrice() + productsPrice();

  int totalCount() {
    int count = 0;
    for (CartItem cartItem in cart.values) {
      count += cartItem.count;
    }
    return count;
  }

  Future<void> confirmOrder() async {
    emit(CartState.loading());
    final result = await _confirmOrder(cart.values.toList());

    await result.fold((failure) async {
      emit(CartState.error(errMsg: failure.message));
    }, (unit) async {
      cart.clear();
      animatedListCount = 0;
      emit(CartState.done(refresh: -100));
      await Future.delayed(const Duration(milliseconds: 50));
    });
  }
}
