import 'package:ecommerce/features/cart/data/models/cart_edit_model/cart_edit_model.dart';
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';

abstract class CartRemoteDataSource {
  Future<dynamic> editCart({required CartEditModel cartEditModel});
  Future<dynamic> deleteCart({required int productId});

  Future<dynamic> confirmOrder({required String address});

  Future<List<CartItemModel>> getCart();


}