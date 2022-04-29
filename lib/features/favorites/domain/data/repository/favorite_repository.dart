import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';

abstract class FavoriteRepository {
  Future<Either<AppFailure, Unit>> addToFavorite({required productId});

  Future<Either<AppFailure, Unit>> removeFromFavorite({required productId});

  Future<Either<AppFailure, List<Product>>> getFavorites();
}
