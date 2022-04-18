import 'package:dio/dio.dart';
import 'package:ecommerce/features/favorites/data/models/favorite_model/favorite_model.dart';
import 'package:ecommerce/features/favorites/domain/data/service/favorite_remote_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'favorite_remote_service_impl.g.dart';

@Injectable(as: FavoriteRemoteService)
@RestApi(baseUrl: "https://my.api.mockaroo.com")
abstract class FavoriteRemoteServiceImpl implements FavoriteRemoteService {
  @factoryMethod
  factory FavoriteRemoteServiceImpl(Dio dio) = _FavoriteRemoteServiceImpl;

  @override
  @POST('/favorites?key=e59c4330')
  Future addToFavorites({
    required int productId,
    @Header("Authorization") required String token,
  });

  @override
  @POST('/favorites?key=e59c4330')
  Future<List<FavoriteModel>> getFavorites({
    @Header("Authorization") required String token,
  });

  @override
  @POST('/favorites?key=e59c4330')
  Future removeFromFavorites({
    required int productId,
    @Header("Authorization") required String token,
  });
}
