import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';

abstract class ProductRepo {

  Future<Either<Failures, List<Product>>>  getProducts();
}