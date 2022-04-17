import 'package:ecommerce/features/categories/data/models/category_model.dart';

abstract class CategoriesApiService {
  Future<CategoryModel> getCategories({required String token});
}
