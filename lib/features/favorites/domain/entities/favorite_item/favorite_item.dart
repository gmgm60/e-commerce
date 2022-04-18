import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_item.freezed.dart';

@Freezed()
class FavoriteItem with _$FavoriteItem {
  factory FavoriteItem({
    required Product product,
  }) = _FavoriteItem;
}
