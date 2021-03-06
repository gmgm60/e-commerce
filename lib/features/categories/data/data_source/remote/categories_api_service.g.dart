// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _CategoriesApiService implements CategoriesApiService {
  _CategoriesApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://62c4-197-55-236-203.eu.ngrok.io/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CategoryModel> getCategories() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CategoryModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'category/index',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CategoryModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CategoryDetailsModel> getProductsByCatId({required catId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CategoryDetailsModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'category/view/${catId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CategoryDetailsModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
