import 'package:dio/dio.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/favorites/data/models/favorite_model/favorite_model.dart';
import 'package:ecommerce/features/favorites/domain/data/data_source/favorite_remote_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'favorite_remote_service_impl.g.dart';

@Environment(InjectInv.test)
@RestApi(baseUrl: "https://my.api.mockaroo.com")
@Injectable(as: FavoriteRemoteService)
abstract class FavoriteRemoteServiceImpl extends FavoriteRemoteService{
  @factoryMethod
  factory FavoriteRemoteServiceImpl(Dio dio) = _FavoriteRemoteServiceImpl;

  @POST('/favorites?key=e59c4330')
  Future addToFavorites({
    required int productId,
    @Header("Authorization") required String token,
  });

  @POST('/favorites?key=e59c4330')
  Future<List<FavoriteModel>> getFavorites({
    @Header("Authorization") required String token,
  });

  @POST('/favorites?key=e59c4330')
  Future removeFromFavorites({
    required int productId,
    @Header("Authorization") required String token,
  });
}

@Environment(InjectInv.localMock)
@Injectable(as: FavoriteRemoteService)
class FavoriteRemoteServiceLocal extends FavoriteRemoteService{
  Future addToFavorites({
    required int productId,
    required String token,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<List<FavoriteModel>> getFavorites({
    required String token,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return [];
  }

  Future removeFromFavorites({
    required int productId,
    required String token,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}

abstract class FavoriteRemoteService {

  @POST('/favorites?key=e59c4330')
  Future addToFavorites({
    required int productId,
    @Header("Authorization") required String token,
  });

  @POST('/favorites?key=e59c4330')
  Future<List<FavoriteModel>> getFavorites({
    @Header("Authorization") required String token,
  });

  @POST('/favorites?key=e59c4330')
  Future removeFromFavorites({
    required int productId,
    @Header("Authorization") required String token,
  });
}
