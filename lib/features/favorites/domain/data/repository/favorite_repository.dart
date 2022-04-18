import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/features/favorites/domain/entities/favorite_item/favorite_item.dart';

abstract class FavoriteRepository {
  Future<Either<Failures, Unit>> addToFavorite({required productId});

  Future<Either<Failures, Unit>> removeFromFavorite({required productId});

  Future<Either<Failures, List<FavoriteItem>>> getFavorites();
}
