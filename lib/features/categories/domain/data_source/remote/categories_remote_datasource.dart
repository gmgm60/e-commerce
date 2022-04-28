import 'package:ecommerce/features/categories/data/models/category_model.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';

abstract class CategoriesRemoteDatasource {
  Future<CategoryModel> getCategories();

  Future<List<ProductModel>> getProductsByCatId({required int catId});
}
