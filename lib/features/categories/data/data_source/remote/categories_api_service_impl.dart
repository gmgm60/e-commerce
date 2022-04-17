import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/categories/data/models/category_model.dart';
import 'package:ecommerce/features/categories/domain/data_source/remote/categories_api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'categories_api_service_impl.g.dart';

@Singleton(as: CategoriesApiService)
@RestApi(baseUrl: 'url')
abstract class CategoriesApiServiceImpl implements CategoriesApiService {
  @factoryMethod
  factory CategoriesApiServiceImpl(Dio dio) = _CategoriesApiServiceImpl;

  @override
  @GET('path')
  Future<CategoryModel> getCategories(
      {@Header(authorizationHeader) required String token});
}
