import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/features/categories/data/data_source/remote/categories_api_service.dart';
import 'package:ecommerce/features/categories/data/models/category/category_model.dart';
import 'package:ecommerce/features/categories/data/models/category_details/category_details_model.dart';
import 'package:ecommerce/features/categories/domain/data_source/remote/categories_remote_datasource.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesRemoteDatasource)
class CategoriesRemoteDatasourceImpl extends CategoriesRemoteDatasource {
  final CategoriesApiService _categoriesApiService;

  CategoriesRemoteDatasourceImpl(this._categoriesApiService);

  @override
  Future<CategoryModel> getCategories() async {
    try {
      return await _categoriesApiService.getCategories();
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future<CategoryDetailsModel> getProductsByCatId({required int catId}) async {
    try {
      return await _categoriesApiService.getProductsByCatId(catId: catId);
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
