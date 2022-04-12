
import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';

extension ModelToDomain on CartItemModel{
  CartItem toDomain(){
    return CartItem(id: id, count: count);
  }
}
extension DomainToModel on CartItem{
  CartItemModel toModel(){
    return CartItemModel(id: id, count: count);
  }
}