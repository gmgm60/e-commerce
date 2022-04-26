import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_exception.freezed.dart';

@freezed
class AuthException extends RemoteAppException with _$AuthException {
  factory AuthException.login({required String message}) = _LoginException;

  factory AuthException.register({required String message}) =
      _RegisterException;

  factory AuthException.logout({required String message}) = _LogoutException;

  factory AuthException.resetPassword({required String message}) =
      _ResetPasswordException;
}
