import 'package:ecommerce/features/cart/data/models/cart_edit_model/cart_edit_model.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_edit/cart_edit.dart';

extension ToModel on CartEdit{
  CartEditModel toModel()=> CartEditModel(productId: productId, quantity: quantity);
}