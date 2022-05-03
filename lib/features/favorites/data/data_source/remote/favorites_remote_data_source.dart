import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/features/favorites/data/data_source/remote/favorite_remote_service_impl.dart';
import 'package:ecommerce/features/favorites/domain/data/data_source/favorite_remote_data_source.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FavoriteRemoteDataSource)
class FavoriteRemoteDataSourceImpl extends FavoriteRemoteDataSource {
  final FavoriteRemoteService _favoriteRemoteService;

  FavoriteRemoteDataSourceImpl(this._favoriteRemoteService);

  @override
  Future<List<ProductModel>> getFavorites(
      {required List<int> favoritesIds}) async {
    try {
      final List<ProductModel> favoritesModel = [];
      for (int productId in favoritesIds) {
        ProductModel productModel =
            await _favoriteRemoteService.getToFavorite(productId: productId);
        favoritesModel.add(productModel);
      }
      return favoritesModel;
    } catch (exception) {
      throw throwAppException(exception);
    }
  }
}
