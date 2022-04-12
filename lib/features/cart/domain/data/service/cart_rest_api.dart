import 'package:dio/dio.dart';
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
part 'cart_rest_api.g.dart';

@injectable
@RestApi(baseUrl: "https://my.api.mockaroo.com")
abstract class CartRestApiImpl {

  @factoryMethod
  factory CartRestApiImpl(Dio dio) = _CartRestApiImpl;

  @GET("/cart.json?key=e59c4330")
  Future<List<CartItemModel>> getCart({
    @Header("Authorization") required String token,
  });

  @POST("/cart.json?key=e59c4330")
  Future<List<CartItemModel>> editCart({
    @Header("Authorization") required String token,
    @Query("cart") required List<CartItemModel> cartModel
  });

}
