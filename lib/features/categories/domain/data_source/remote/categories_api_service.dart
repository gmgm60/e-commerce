import 'package:ecommerce/features/categories/data/models/category_model.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';

abstract class CategoriesApiService {
  Future<CategoryModel> getCategories({required String token});

  Future<List<ProductModel>> getProductsByCatId(
      {required String token, required int catId});
}
