import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_exception.freezed.dart';

abstract class AppException implements Exception {
  final String message;
  AppException(this.message);
}

abstract class RemoteAppException extends AppException{
  RemoteAppException(String message) : super(message);
}

@freezed
class GeneralRemoteAppException extends RemoteAppException with _$GeneralRemoteAppException{
  factory GeneralRemoteAppException.unAuth({required String message}) = _UnAuth ;
  factory GeneralRemoteAppException.noData({required String message}) = _NoData ;
  factory GeneralRemoteAppException.noConnection({required String message}) = _NoConnection ;
  factory GeneralRemoteAppException.serverError({required String message}) = _ServerError ;
  factory GeneralRemoteAppException.unKnown({required String message}) = _UnKnown ;
}

abstract class LocalAppException extends AppException {
  LocalAppException(String message) : super(message);
}

@freezed
class GeneralLocalAppException extends LocalAppException with _$GeneralLocalAppException {
  factory GeneralLocalAppException.cantAccess({required String message}) = _CantAccess;
}

