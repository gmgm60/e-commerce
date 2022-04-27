import 'package:dio/dio.dart';
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'cart_remote_service.g.dart';

@Injectable()
@RestApi(baseUrl: "https://my.api.mockaroo.com")
abstract class CartRemoteService{
  @factoryMethod
  factory CartRemoteService(Dio dio) = _CartRemoteService;


  @GET('/cart?key=e59c4330')
  Future<List<CartItemModel>> getCart();

  @GET('/cart?key=e59c4330')
  Future<dynamic> editCart({
    required List<CartItemModel> cart,
  });


  @GET('/cart?key=e59c4330')
  Future confirmOrder({required List<CartItem> cart});
}
