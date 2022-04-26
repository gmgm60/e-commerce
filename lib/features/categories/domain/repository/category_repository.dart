import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/app_failure.dart';
import 'package:ecommerce/features/categories/domain/entities/category.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';

abstract class CategoryRepository {
  Future<Either<Failures, List<ProductsCategory>>> getCategories();

  Future<Either<Failures, List<Product>>> getProductsByCatId(
      {required int catId});
}
