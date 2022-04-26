import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure extends RemoteAppFailure with _$AuthFailure {
  factory AuthFailure.login({required String message}) = _LoginFailure;

  factory AuthFailure.register({required String message}) = _RegisterFailure;

  factory AuthFailure.logout({required String message}) = _LogoutFailure;

  factory AuthFailure.resetPassword({required String message}) =
      _ResetPasswordFailure;
}
