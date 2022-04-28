import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';

extension ProductModelMapper on ProductModel {
  Product toDomain() {
    return Product(
        id: id,
        catId: catId,
        name: name,
        description: description,
        image: image,
        price: price,
        discount: discount,
        quantity: quantity);
  }
}

extension ProductMapper on Product {
  ProductModel toModel() {
    return ProductModel(
        id: id,
        catId: catId,
        name: name,
        description: description,
        image: image,
        price: price,
        discount: discount,
        quantity: quantity);
  }
}
