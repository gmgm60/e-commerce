import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/features/categories/domain/entities/category.dart';

abstract class CategoryRepository {
  Future<Either<Failures, List<Category>>> getCategories();
}
