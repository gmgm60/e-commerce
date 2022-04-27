// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchants_api_service_impl.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _MerchantsApiServiceImpl implements MerchantsApiServiceImpl {
  _MerchantsApiServiceImpl(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://my.api.mockaroo.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<MerchantData>> getMerchants() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<MerchantData>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/merchants?key=ec0ea640',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => MerchantData.fromJson(i as Map<String, dynamic>))
        .toList();
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
