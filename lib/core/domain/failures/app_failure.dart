import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

abstract class AppFailure {
  final String message;

  AppFailure(this.message);
}

abstract class RemoteAppFailure extends AppFailure {
  RemoteAppFailure(String message) : super(message);
}

@freezed
class GeneralRemoteAppFailure extends RemoteAppFailure with _$GeneralRemoteAppFailure{
  factory GeneralRemoteAppFailure.unAuth({required String message}) = _UnAuth ;
  factory GeneralRemoteAppFailure.noData({required String message}) = _NoData ;
  factory GeneralRemoteAppFailure.noConnection({required String message}) = _NoConnection ;
  factory GeneralRemoteAppFailure.serverError({required String message}) = _ServerError ;
  factory GeneralRemoteAppFailure.unKnown({required String message}) = _UnKnown ;
}
abstract class LocalAppFailure extends AppFailure {
  LocalAppFailure(String message) : super(message);
}
@freezed
class GeneralLocalAppFailure extends LocalAppFailure with _$GeneralLocalAppFailure {
  factory GeneralLocalAppFailure.cantAccess({required String message}) = _CantAccess;
}
