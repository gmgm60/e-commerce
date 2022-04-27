import 'package:ecommerce/features/favorites/data/models/favorite_model/favorite_model.dart';

abstract class FavoriteRemoteDataSource {
 Future<dynamic> addToFavorites({required int productId, required String token});

Future<dynamic>  removeFromFavorites({required int productId, required String token});

 Future<List<FavoriteModel>> getFavorites({required String token});
}
