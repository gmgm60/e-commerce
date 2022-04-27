import 'package:ecommerce/features/favorites/data/models/favorite_model/favorite_model.dart';

abstract class FavoriteRemoteDataSource {
 Future<dynamic> addToFavorites({required int productId});

Future<dynamic>  removeFromFavorites({required int productId});

 Future<List<FavoriteModel>> getFavorites();
}
