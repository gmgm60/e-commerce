import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:flutter/material.dart';

AppException throwAppException(exception) {
  String errorMessage = 'Something went wrong';
  debugPrint(exception.toString());
  if (exception is DioError) {
    debugPrint('Dio Error with code: ${exception.response?.statusCode}');

    try {
      errorMessage = exception.response?.data['message'] as String;
    } catch (e) {
      return GeneralRemoteAppException.unKnown(message: errorMessage);
    }

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
        return GeneralRemoteAppException.unKnown(message: errorMessage);
    }
  } else {
    debugPrint(exception.toString());
    return GeneralRemoteAppException.unKnown(message: errorMessage);
  }
}
