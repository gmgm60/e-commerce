// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_remote_service_impl.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _FavoriteRemoteService implements FavoriteRemoteService {
  _FavoriteRemoteService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://0326-41-38-218-115.ngrok.io/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ProductModel> getToFavorite({required productId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProductModel>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'product/${productId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProductModel.fromJson(_result.data!);
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
