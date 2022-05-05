import 'package:ecommerce/features/categories/data/models/category/category_model.dart';
import 'package:ecommerce/features/categories/data/models/category_details/category_details_model.dart';

abstract class CategoriesRemoteDatasource {
  Future<CategoryModel> getCategories();

  Future<CategoryDetailsModel> getProductsByCatId({required int catId});
}
