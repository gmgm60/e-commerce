import 'package:dio/dio.dart';
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'cart_retrofit.g.dart';
@injectable
@RestApi(baseUrl: "https://my.api.mockaroo.com")
abstract class CartRetrofit {
  @factoryMethod
  factory CartRetrofit(Dio dio) = _CartRetrofit;

  @GET('/cart?key=e59c4330')
  Future<List<CartItemModel>> getCart({
    @Header("Authorization")
    required String token,
  });

  @POST("/cart?key=e59c4330")
  Future<List<CartItemModel>> editCart({
    @Header("Authorization") required String token,
    @Query("cart") required List<CartItemModel> cartModel
  });
}
