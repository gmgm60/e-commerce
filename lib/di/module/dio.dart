import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppDioInject {
  Dio get dio {
    Dio dio = Dio();
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      final SharedPreferences pref = await SharedPreferences.getInstance();

      final String? token = pref.getString(tokenKey);
      options.headers.addAll({authorizationHeader: "Bearer $token"});

      // check for real internet access,
      // cancel if cant connect to example.com,
      // and return dio error with cancel and statusCode networkConnectTimeoutError
      try {
        var socket = await Socket.connect('example.com', 80,
            timeout: const Duration(seconds: 2));
        socket.destroy();
        handler.next(options);
      } on SocketException catch (_) {
        handler.reject(
          DioError(
              requestOptions: options,
              type: DioErrorType.cancel,
              response: Response(
                requestOptions: options,
                statusCode: HttpStatus.networkConnectTimeoutError,
              )),
        );
      }


    }));
    dio.options.headers = {"Accept": "application/json"};
    return dio;
  }
}
