import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class MyDioInject {
  Dio get dio {
    Dio dio = Dio();
    dio.options.headers = {
      "Accept":"application/json"
    };
    return dio;
  }
}
