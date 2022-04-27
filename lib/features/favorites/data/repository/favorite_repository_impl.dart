import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/favorites/domain/data/data_source/favorite_remote_data_source.dart';
import 'package:ecommerce/features/favorites/domain/data/repository/favorite_repository.dart';
import 'package:ecommerce/features/favorites/domain/entities/favorite_item/favorite_item.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FavoriteRepository)
class FavoriteRepositoryImpl extends FavoriteRepository {
  final FavoriteRemoteDataSource _favoriteRemoteService;

  FavoriteRepositoryImpl(this._favoriteRemoteService);

  @override
  Future<Either<AppFailure, Unit>> addToFavorite({required productId}) async {
    try {
      final response =
          await _favoriteRemoteService.addToFavorites(productId: productId);

      return right(unit);
    } on AppException catch (e) {
      return left(GeneralRemoteAppFailure.unKnown(message: e.message));
    }
  }

  @override
  Future<Either<AppFailure, List<FavoriteItem>>> getFavorites() async {
    try {
      final response = await _favoriteRemoteService.getFavorites();

      return right([]);
    } on AppException catch (e) {
      return left(GeneralRemoteAppFailure.unKnown(message: e.message));
    }
  }

  @override
  Future<Either<AppFailure, Unit>> removeFromFavorite(
      {required productId}) async {
    try {
      final response = await _favoriteRemoteService.removeFromFavorites(
          productId: productId);

      return right(unit);
    } on AppException catch (e) {
      return left(GeneralRemoteAppFailure.unKnown(message: e.message));
    }
  }
}
