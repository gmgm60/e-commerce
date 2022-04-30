import 'package:dio/dio.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/favorites/data/models/favorite_model/favorite_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'favorite_remote_service_impl.g.dart';

@Environment(InjectInv.test)
@RestApi(baseUrl: "https://my.api.mockaroo.com")
@Injectable(as: FavoriteRemoteService)
abstract class FavoriteRemoteServiceImpl extends FavoriteRemoteService{
  @factoryMethod
  factory FavoriteRemoteServiceImpl(Dio dio) = _FavoriteRemoteServiceImpl;

  @override
  @POST('/favorites?key=e59c4330')
  Future addToFavorites({
    required int productId,
  });

  @override
  @POST('/favorites?key=e59c4330')
  Future<List<FavoriteModel>> getFavorites();

  @override
  @POST('/favorites?key=e59c4330')
  Future removeFromFavorites({
    required int productId,
  });
}

@Environment(InjectInv.localMock)
@Injectable(as: FavoriteRemoteService)
class FavoriteRemoteServiceLocal extends FavoriteRemoteService{
  @override
  Future addToFavorites({
    required int productId,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<List<FavoriteModel>> getFavorites() async {
    await Future.delayed(const Duration(seconds: 1));
    return [];
  }

  @override
  Future removeFromFavorites({
    required int productId,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}

abstract class FavoriteRemoteService {

  @POST('/favorites?key=e59c4330')
  Future addToFavorites({
    required int productId,});

  @POST('/favorites?key=e59c4330')
  Future<List<FavoriteModel>> getFavorites();

  @POST('/favorites?key=e59c4330')
  Future removeFromFavorites({
    required int productId,});
}
