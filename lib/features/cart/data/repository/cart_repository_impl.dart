import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_mapper.dart';
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:ecommerce/features/cart/domain/data/data_source/cart_remote_data_source.dart';
import 'package:ecommerce/features/cart/domain/data/repository/cart_repository.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@Injectable(
  as: CartRepository,
)
class CartRepositoryImpl extends CartRepository {
  final Logger _logger;
  final CartRemoteDataSource _cartRemoteService;

  CartRepositoryImpl(this._cartRemoteService, this._logger);

  @override
  Future<Either<AppFailure, Unit>> confirmOrder(
      {required List<CartItem> cart}) async {
    try {
      final response = await _cartRemoteService.confirmOrder(cart: cart);
      _logger.v(response);
      return right(unit);
    } on AppException catch (e) {
      // TODO
      _logger.v(e.toString());
      return left((GeneralRemoteAppFailure.unKnown(message: e.message)));
    }
  }

  @override
  Future<Either<AppFailure, Unit>> editCart(
      {required List<CartItem> cart}) async {
    try {
      final List<CartItemModel> cartModel =
          cart.map((cartItem) => cartItem.toModel()).toList();
      final response = await _cartRemoteService.editCart(cart: cartModel);
      //_logger.v(response);
      return right(unit);
    } on AppException catch (e) {
      // TODO
      _logger.v(e.toString());
      return left((GeneralRemoteAppFailure.unKnown(message: e.message)));
    }
  }

  @override
  Future<Either<AppFailure, List<CartItem>>> getCart() async {
    try {
      final response = await _cartRemoteService.getCart();
      _logger.v(response);
      final List<CartItem> cart =
          response.map((cartItemModel) => cartItemModel.toDomain()).toList();
      return right(cart);
    } on AppException catch (e) {
      // TODO
      _logger.v(e.toString());
      return left((GeneralRemoteAppFailure.unKnown(message: e.message)));
    }
  }
}
