import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/features/favorites/data/data_source/remote/favorite_remote_service_impl.dart';
import 'package:ecommerce/features/favorites/data/models/favorite_model/favorite_model.dart';
import 'package:ecommerce/features/favorites/domain/data/data_source/favorite_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FavoriteRemoteDataSource)
class FavoriteRemoteDataSourceImpl extends FavoriteRemoteDataSource {
  final FavoriteRemoteService _favoriteRemoteService;

  FavoriteRemoteDataSourceImpl(this._favoriteRemoteService);

  @override
  Future addToFavorites({required int productId}) async {
    try {
      final response =
          await _favoriteRemoteService.addToFavorites(productId: productId);
      return response;
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future<List<FavoriteModel>> getFavorites() async {
    try {
      final response = await _favoriteRemoteService.getFavorites();
      return response;
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future removeFromFavorites({required int productId}) async {
    try {
      final response = await _favoriteRemoteService.removeFromFavorites(
          productId: productId);
      return response;
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
