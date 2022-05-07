import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';

abstract class FavoriteRemoteDataSource {
  Future<List<ProductModel>> getFavorites({required List<int> favoritesIds});
}
