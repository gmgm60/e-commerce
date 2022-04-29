import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/data/return_app_failure.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/favorites/domain/data/data_source/favorite_local_data_source.dart';
import 'package:ecommerce/features/favorites/domain/data/data_source/favorite_remote_data_source.dart';
import 'package:ecommerce/features/favorites/domain/data/repository/favorite_repository.dart';
import 'package:ecommerce/features/products/data/mappers/product_mapper.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FavoriteRepository)
class FavoriteRepositoryImpl extends FavoriteRepository {
  final FavoriteRemoteDataSource _favoriteRemoteService;
  final FavoriteLocalDataSource _favoriteLocalDataSource;

  FavoriteRepositoryImpl(
      this._favoriteRemoteService, this._favoriteLocalDataSource);

  @override
  Future<Either<AppFailure, Unit>> addToFavorite({required productId}) async {
    try {
      final List<int> favorites =
          await _favoriteLocalDataSource.getFavoritesIds();
      favorites.contains(productId) ? null : favorites.add(productId);
      await _favoriteLocalDataSource.saveFavoritesIds(favorites: favorites);

      return right(unit);
    } on AppException catch (e) {
      return left(returnAppFailure(e));
    }
  }

  @override
  Future<Either<AppFailure, List<Product>>> getFavorites() async {
    try {
      final List<int> favoritesId =
          await _favoriteLocalDataSource.getFavoritesIds();
      final response =
          await _favoriteRemoteService.getFavorites(favoritesIds: favoritesId);
      final List<Product> favorites =
          response.map((productModel) => productModel.toDomain()).toList();

      return right(favorites);
    } on AppException catch (e) {
      return left(returnAppFailure(e));
    }
  }

  @override
  Future<Either<AppFailure, Unit>> removeFromFavorite(
      {required productId}) async {
    try {
      final List<int> favorites =
          await _favoriteLocalDataSource.getFavoritesIds();
      favorites.contains(productId) ? favorites.remove(productId) : null;
      await _favoriteLocalDataSource.saveFavoritesIds(favorites: favorites);
      return right(unit);
    } on AppException catch (e) {
      return left(returnAppFailure(e));
    }
  }
}
