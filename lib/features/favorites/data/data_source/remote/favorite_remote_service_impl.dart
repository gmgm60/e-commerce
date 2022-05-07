import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'favorite_remote_service_impl.g.dart';

@RestApi(baseUrl: baseUrl)
@injectable
abstract class FavoriteRemoteService {
  @factoryMethod
  factory FavoriteRemoteService(Dio dio) = _FavoriteRemoteService;

  @GET("$productEndPoint/{productId}")
  Future<ProductModel> getToFavorite({
    @Path() required int productId,
  });
}
