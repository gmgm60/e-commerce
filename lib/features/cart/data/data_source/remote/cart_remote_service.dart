import 'package:auto_route/annotations.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/cart/data/models/cart_edit_model/cart_edit_model.dart';
import 'package:ecommerce/features/cart/data/models/cart_response_model/cart_response_model.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'cart_remote_service.g.dart';

@Injectable()
@RestApi(baseUrl: baseUrl)
abstract class CartRemoteService{
  @factoryMethod
  factory CartRemoteService(Dio dio) = _CartRemoteService;


  @GET(viewCartEndPoint)
  Future<CartResponseModel> getCart();

  @GET(addToCartEndPoint)
  Future<dynamic> editCart({
   @Body() required CartEditModel cartEditModel,
  });

  @GET(confirmOrderEndPoint)
  Future confirmOrder();

  @GET(deleteFromCartEndPoint)
  Future deleteFromCart({
    @QueryParam("product_id")
    required int productId});
}
