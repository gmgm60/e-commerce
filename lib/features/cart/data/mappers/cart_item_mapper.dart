import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:ecommerce/features/products/data/mappers/product_mapper.dart';

extension ModelToDomain on CartItemModel{
  CartItem toDomain(){
    return CartItem(product: productModel.toDomain(), count: count);
  }
}
extension DomainToModel on CartItem{
  CartItemModel toModel(){
    return CartItemModel(productModel: product.toModel(), count: count);
  }
}