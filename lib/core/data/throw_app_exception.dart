import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:flutter/material.dart';

AppException throwAppException(exception) {
  if (exception is DioError) {
    debugPrint('Dio Error with code: ${exception.response?.statusCode}');

    String? errorMessage = exception.response?.data['message'];
    errorMessage ??= 'Something went wrong';
    switch (exception.response?.statusCode) {
      case HttpStatus.unauthorized:
        return GeneralRemoteAppException.unAuth(message: errorMessage);
      case HttpStatus.internalServerError:
        return GeneralRemoteAppException.serverError(message: errorMessage);
      case HttpStatus.notFound:
        return GeneralRemoteAppException.noData(message: errorMessage);
      case HttpStatus.connectionClosedWithoutResponse:
        return GeneralRemoteAppException.noConnection(message: errorMessage);

      default:
        return GeneralRemoteAppException.unKnown(message: 'Something went wrong');
    }
  }else {
    return GeneralRemoteAppException.unKnown(message: 'Something went wrong');
  }
}
