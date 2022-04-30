// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchants_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _MerchantsApiService implements MerchantsApiService {
  _MerchantsApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://5aa9-154-180-46-124.eu.ngrok.io/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<MerchantModel> getMerchants() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MerchantModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'seller/index',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MerchantModel.fromJson(_result.data!);
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