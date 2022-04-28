import 'package:ecommerce/features/favorites/data/models/favorite_model/favorite_model.dart';
import 'package:ecommerce/features/favorites/domain/entities/favorite_item/favorite_item.dart';
import 'package:ecommerce/features/products/data/mappers/product_mapper.dart';

extension ToDomain on FavoriteModel {
  FavoriteItem toDomain() {
    return FavoriteItem(product: productModel.toDomain());
  }
}
