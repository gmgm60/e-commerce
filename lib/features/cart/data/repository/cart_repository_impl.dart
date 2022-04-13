import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_mapper.dart';
import 'package:ecommerce/features/cart/domain/data/repository/cart_repository.dart';
import 'package:ecommerce/features/cart/domain/data/service/cart_remote_service.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@Injectable(as: CartRepository,)
class CartRepositoryImpl extends CartRepository{
  final Logger _logger;
  final CartRemoteService _cartRemoteService;
  String token="12346";

  CartRepositoryImpl(this._cartRemoteService, this._logger);

  @override
  Future<Either<Failures, Unit>> confirmOrder() async{
    try {
      final response = await _cartRemoteService.confirmOrder(token: token);
      _logger.v(response);
      return right(unit);
    } on Exception catch (e) {
      // TODO
      _logger.v(e.toString());
      return left((Failures.serverError(e.toString())));
    }
  }

  @override
  Future<Either<Failures, Unit>> editCart({required List<CartItem> cart})async {
    try {
      final List<CartItemModel> cartModel = cart.map((cartItem) => cartItem.toModel()).toList();
      final response = await _cartRemoteService.editCart(cart: cartModel, token: token);
      _logger.v(response);
      return right(unit);
    } on Exception catch (e) {
      // TODO
      _logger.v(e.toString());
      return left((Failures.serverError(e.toString())));
    }
  }

  @override
  Future<Either<Failures, List<CartItem>>> getCart()async {
    try {
      final response = await _cartRemoteService.getCart(token: token);
      _logger.v(response);
      final List<CartItem> cart = response.map((cartItemModel) => cartItemModel.toDomain()).toList();
      return right(cart);
    } on Exception catch (e) {
      // TODO
      _logger.v(e.toString());
      return left((Failures.serverError(e.toString())));
    }
  }

}