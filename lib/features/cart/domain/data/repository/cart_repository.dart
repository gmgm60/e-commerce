import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';

abstract class CartRepository{

  Future<Either<AppFailure,Unit>> editCart({required List<CartItem> cart});

  Future<Either<AppFailure,List<CartItem>>> getCart();

  Future<Either<AppFailure,Unit>> confirmOrder({required List<CartItem> cart});

}