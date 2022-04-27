import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';

abstract class CartRemoteDataSource {
  Future<dynamic> editCart({required List<CartItemModel> cart});

  Future<dynamic> confirmOrder({required List<CartItem> cart});

  Future<List<CartItemModel>> getCart();


}