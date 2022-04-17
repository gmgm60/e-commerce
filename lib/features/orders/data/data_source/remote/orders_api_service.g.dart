// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _OrdersApiService implements OrdersApiService {
  _OrdersApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://my.api.mockaroo.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<OrdersModel> getOrders({required token}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<OrdersModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/orders.json?key=ec0ea640',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OrdersModel.fromJson(_result.data!);
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
