
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:ecommerce/features/cart/data/service/remote/cart_retrofit.dart';
import 'package:ecommerce/features/cart/domain/data/service/cart_remote_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRemoteService)
class CartRemoteServiceImpl extends CartRemoteService {
  final CartRetrofit _cartRetrofit;

  CartRemoteServiceImpl(this._cartRetrofit);

  @override
  Future confirmOrder({required String token}) {
    // TODO: implement confirmOrder
    throw UnimplementedError();
  }

  @override
  Future editCart({required List<CartItemModel> cart, required String token}) {
    // TODO: implement editCart
    throw UnimplementedError();
  }

  @override
  Future<List<CartItemModel>> getCart({required String token}) async{
    return await _cartRetrofit.getCart(token: token);
  }

}