import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/app_failure.dart';
import 'package:ecommerce/features/auth/domain/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/favorites/domain/data/repository/favorite_repository.dart';
import 'package:ecommerce/features/favorites/domain/data/service/favorite_remote_service.dart';
import 'package:ecommerce/features/favorites/domain/entities/favorite_item/favorite_item.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FavoriteRepository)
class FavoriteRepositoryImpl extends FavoriteRepository {
  final FavoriteRemoteService _favoriteRemoteService;
  final AuthLocalService _authLocalService;
  FavoriteRepositoryImpl(this._favoriteRemoteService, this._authLocalService);

  @override
  Future<Either<Failures, Unit>> addToFavorite({required productId}) async {
    try {
      final token = _authLocalService.getToken() as String;
      final response =await  _favoriteRemoteService.addToFavorites(
          productId: productId, token: token);

      return right(unit);
    } catch (e) {
      return left(Failures.serverError(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<FavoriteItem>>> getFavorites() async {
    try {
      final token = _authLocalService.getToken() as String;
      final response = await _favoriteRemoteService.getFavorites(token: token);

      return right([]);
    } catch (e) {
      return left(Failures.serverError(e.toString()));
    }
  }

  @override
  Future<Either<Failures, Unit>> removeFromFavorite(
      {required productId}) async {
    try {
      final token = _authLocalService.getToken() as String;
      final response = await _favoriteRemoteService.removeFromFavorites(
          productId: productId, token: token);

      return right(unit);
    } catch (e) {
      return left(Failures.serverError(e.toString()));
    }
  }
}
