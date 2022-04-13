import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';

abstract class CartRemoteService {
  Future<dynamic> editCart({required List<CartItemModel> cart,required String token});

  Future<dynamic> confirmOrder({required String token});

  Future<List<CartItemModel>> getCart({required String token});


}