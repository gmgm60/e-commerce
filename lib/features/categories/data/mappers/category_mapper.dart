import 'package:ecommerce/features/categories/data/models/category/category_model.dart';
import 'package:ecommerce/features/categories/domain/entities/category.dart';

extension CategoryMapper on CategoryData {
  ProductsCategory get fromModel => ProductsCategory(
        id: id,
        name: name ?? '',
        description: description ?? '',
        image: image ?? '',
      );
}
