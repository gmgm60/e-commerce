import 'package:dio/dio.dart';
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:ecommerce/features/cart/domain/data/service/cart_remote_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'cart_remote_service_impl.g.dart';

@Injectable(as: CartRemoteService)
@RestApi(baseUrl: "https://my.api.mockaroo.com")
abstract class CartRemoteServiceImpl implements CartRemoteService {
  @factoryMethod
  factory CartRemoteServiceImpl(Dio dio) = _CartRemoteServiceImpl;

  @override
  @GET('/cart?key=e59c4330')
  Future<List<CartItemModel>> getCart({
    @Header("Authorization") required String token,
  });

  @override
  @POST("/cart?key=e59c4330")
  Future<dynamic> editCart(
      {@Header("Authorization") required String token,
      @Query("cart") required List<CartItemModel> cart});

  @override
  @POST("path")
  Future confirmOrder({required String token});
}
