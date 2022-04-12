import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';

abstract class CartRepository{

  Future<Either<Failures,Unit>> editCart({required List<CartItem> cart});

  Future<Either<Failures,List<CartItem>>> getCart();

  Future<Either<Failures,Unit>> confirmOrder();

}