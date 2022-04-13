import 'package:bloc/bloc.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:ecommerce/features/cart/domain/use_cases/edit_cart.dart';
import 'package:ecommerce/features/cart/domain/use_cases/get_cart.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'cart_state.dart';

@injectable
class CartCubit extends Cubit<CartState> {
  final Logger _logger;
  final GetCart _getCart;
  final EditCart _editCart;

  // using cart as Map to don't make duplicate values
  final Map<int, CartItem> cart = {};

  CartCubit(this._getCart, this._editCart, this._logger)
      : super(CartState.init());

  Future<void> addToCart({required Product product, required int count}) async {
    emit(CartState.loading());
    cart[product.id] = CartItem(product: product, count: count);
    final List<CartItem> cartList = cart.values.toList();
    final result = await _editCart(cartList);
    result.fold(
      (failure) => emit(CartState.error(errMsg: failure.error)),
      (unit) => emit(CartState.done()),
    );
  }

  Future<void> getCart() async {
    emit(CartState.loading());
    final result = await _getCart(NoParams());
    result.fold(
      (failure) => emit(CartState.error(errMsg: failure.error)),
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
      (failure) => emit(CartState.error(errMsg: failure.error)),
      (unit) {
        this.cart.clear();
        this.cart.addAll(cart);
        emit(CartState.done());
      },
    );
  }
}
