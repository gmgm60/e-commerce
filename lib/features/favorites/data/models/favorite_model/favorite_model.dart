import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_model.freezed.dart';

part 'favorite_model.g.dart';

@Freezed()
class FavoriteModel with _$FavoriteModel {
  factory FavoriteModel({required ProductModel productModel}) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);
}
