import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:flutter/material.dart';

AppException throwAppException(exception) {
  String? errorMessage; //= somethingWentWrong;
  debugPrint(exception.toString());
  if (exception is DioError) {
    debugPrint('Dio Error with code: ${exception.response?.statusCode}');
    try {
      errorMessage = exception.response?.data['message'] as String?;
    } catch (e) {
      return getExceptionFromCode(exception, errorMessage);
    }

    return getExceptionFromCode(exception, errorMessage);
  } else {
    debugPrint(exception.toString());
    return GeneralRemoteAppException.unKnown(message: somethingWentWrong);
  }
}

AppException getExceptionFromCode(DioError exception, String? errorMessage) {
  switch (exception.response?.statusCode) {
    case HttpStatus.unauthorized:
      return GeneralRemoteAppException.unAuth(message: errorMessage ?? unauthorized);
    case HttpStatus.internalServerError:
      return GeneralRemoteAppException.serverError(
          message: errorMessage ?? serverError);
    case HttpStatus.notFound:
      return GeneralRemoteAppException.noData(message: errorMessage ?? notFound );
    // case HttpStatus.connectionClosedWithoutResponse:
    //   return GeneralRemoteAppException.noConnection(
    //       message: errorMessage ?? "444");

    default:
      return GeneralRemoteAppException.unKnown(message: somethingWentWrong);
  }
}
