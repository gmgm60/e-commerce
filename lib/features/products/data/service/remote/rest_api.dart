import 'package:dio/dio.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
part 'rest_api.g.dart';

@injectable
@RestApi(baseUrl: "https://my.api.mockaroo.com")
abstract class RestApiImpl {

  @factoryMethod
  factory RestApiImpl(Dio dio) = _RestApiImpl;

  @GET("/products?key=e59c4330")
  Future<List<ProductModel>> getProducts({
    @Header("Authorization") required String token,
  });

}
