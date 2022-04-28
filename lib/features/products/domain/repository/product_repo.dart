import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';

abstract class ProductRepo {

  Future<Either<AppFailure, List<Product>>>  getProducts();

  Future<Either<AppFailure, Product>>  getProduct({required int productId});
}