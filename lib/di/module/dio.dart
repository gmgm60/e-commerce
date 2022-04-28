import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:flutter/material.dart';
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
      handler.next(options);
    }));
    dio.options.headers = {"Accept": "application/json"};
    return dio;
  }
}
