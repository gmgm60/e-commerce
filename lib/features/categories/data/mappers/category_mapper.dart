import 'package:ecommerce/features/categories/data/models/category_model.dart';
import 'package:ecommerce/features/categories/domain/entities/category.dart';

extension CategoryMapper on CategoryData {
  Category get fromModel => Category(
        id: id,
        name: name ?? '',
        description: description ?? '',
        image: image ?? '',
      );
}
