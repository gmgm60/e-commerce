import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/auth/domain/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/favorites/domain/data/data_source/favorite_remote_source.dart';
import 'package:ecommerce/features/favorites/domain/data/repository/favorite_repository.dart';
import 'package:ecommerce/features/favorites/domain/entities/favorite_item/favorite_item.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FavoriteRepository)
class FavoriteRepositoryImpl extends FavoriteRepository {
  final FavoriteRemoteSource _favoriteRemoteService;
  final AuthLocalService _authLocalService;
  FavoriteRepositoryImpl(this._favoriteRemoteService, this._authLocalService);

  @override
  Future<Either<AppFailure, Unit>> addToFavorite({required productId}) async {
    try {
      final token = _authLocalService.getToken() as String;
      final response =await  _favoriteRemoteService.addToFavorites(
          productId: productId, token: token);

      return right(unit);
    }on AppException catch (e) {
      return left(GeneralRemoteAppFailure.unKnown(message: e.message));
    }
  }

  @override
  Future<Either<AppFailure, List<FavoriteItem>>> getFavorites() async {
    try {
      final token = _authLocalService.getToken() as String;
      final response = await _favoriteRemoteService.getFavorites(token: token);

      return right([]);
    } on AppException catch (e) {
      return left(GeneralRemoteAppFailure.unKnown(message: e.message));
    }
  }

  @override
  Future<Either<AppFailure, Unit>> removeFromFavorite(
      {required productId}) async {
    try {
      final token = _authLocalService.getToken() as String;
      final response = await _favoriteRemoteService.removeFromFavorites(
          productId: productId, token: token);

      return right(unit);
    }on AppException catch (e) {
      return left(GeneralRemoteAppFailure.unKnown(message: e.message));
    }
  }
}
