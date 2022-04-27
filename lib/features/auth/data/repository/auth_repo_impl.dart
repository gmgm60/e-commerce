import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/auth/data/mappers/login_mapper.dart';
import 'package:ecommerce/features/auth/data/mappers/register_mapper.dart';
import 'package:ecommerce/features/auth/data/mappers/user_mapper.dart';
import 'package:ecommerce/features/auth/domain/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/auth/domain/data_source/remote/auth_api_service.dart';
import 'package:ecommerce/features/auth/domain/entities/login_param.dart';
import 'package:ecommerce/features/auth/domain/entities/register_param.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepoImpl extends AuthRepository {
  final AuthApiService _apiService;
  final AuthLocalService _localService;

  AuthRepoImpl(this._apiService, this._localService);

  @override
  Future<Either<AppFailure, User>> login(
      {required LoginParam loginParam}) async {
    debugPrint('login start...');

    try {
      final userModel = await _apiService.login(loginModel: loginParam.toModel);

      debugPrint('login user model: $userModel');

      _localService.saveToken(token: userModel.token).then((value) {
        debugPrint('login save token: $value');
      });

      return right(userModel.userData.fromModel);
    } on AppException catch (exception) {
      return left(GeneralRemoteAppFailure.unKnown(message: exception.message));
    }
  }

  @override
  Future<Either<AppFailure, User>> register(
      {required RegisterParam registerParam}) async {
    debugPrint('register start...');

    try {
      final userModel =
          await _apiService.register(registerModel: registerParam.toModel);
      debugPrint('register user model: $userModel');
      _localService.saveToken(token: userModel.token).then((value) {
        debugPrint('register save token: $value');
      });

      return right(userModel.userData.fromModel);
    } on AppException catch (exception) {
      debugPrint('Register Error: ${exception.message}');
      return left(GeneralRemoteAppFailure.unKnown(message: exception.message));
    }
  }

  @override
  Future<Either<AppFailure, String>> logout() async {
    debugPrint('start logout...');
    String? token = _localService.getToken();
    if (token != null) {
      try {
        final logoutResult =
            await _apiService.logout(token: '$bearerToken $token');

        debugPrint('you have logged out...');

        // remove token from local
        await _localService.deleteToken();

        return right(logoutResult);
      } on AppException catch (exception) {
        debugPrint('Logout Catch Error: ${exception.message}');

        return left(
            GeneralRemoteAppFailure.unKnown(message: exception.message));
      }
    } else {
      debugPrint('Logout Error: No Token');
      return left(GeneralRemoteAppFailure.unKnown(message: 'un Auth'));
    }
  }

  @override
  Future<Either<AppFailure, String>> getToken() async {
    String? token = _localService.getToken();
    if (token == null)
      return left(GeneralRemoteAppFailure.unKnown(message: 'no token'));

    return right(token);
  }

  @override
  Future<Either<AppFailure, String>> resetPassword(
      {required String email}) async {
    debugPrint('Reset Password start...');

    try {
      final result = await _apiService.resetPassword(email: email);
      debugPrint('resetPassword $result');

      return right(result);
    } on AppException catch (exception) {
      debugPrint('Reset Error: ${exception.message}');
      return left(GeneralRemoteAppFailure.unKnown(message: exception.message));
    }
  }
}
