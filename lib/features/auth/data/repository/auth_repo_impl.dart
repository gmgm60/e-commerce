import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/auth/data/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/auth/data/data_source/remote/auth_api_service.dart';
import 'package:ecommerce/features/auth/data/mappers/login_mapper.dart';
import 'package:ecommerce/features/auth/data/mappers/register_mapper.dart';
import 'package:ecommerce/features/auth/data/mappers/user_mapper.dart';
import 'package:ecommerce/features/auth/domain/entities/login_param.dart';
import 'package:ecommerce/features/auth/domain/entities/register_param.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepoImpl extends AuthRepository {
  final AuthApiService _service;
  final AuthLocalService _localService;

  AuthRepoImpl(this._service, this._localService);

  @override
  Future<Either<Failure, User>> login({required LoginParam loginParam}) async {
    debugPrint('login start...');

    try {
      final userModel = await _service.login(loginModel: loginParam.toModel);

      debugPrint('login user model: $userModel');

      _localService.saveToken(token: userModel.token).then((value) {
        debugPrint('login save token: $value');
      });

      return right(userModel.userData.fromModel);
    } catch (error) {
      debugPrint('Login Error: $error');
      //todo handle error
      return left(const Failure(message: 'Login Error'));
    }
  }

  @override
  Future<Either<Failure, User>> register(
      {required RegisterParam registerParam}) async {
    debugPrint('register start...');

    try {
      final userModel =
          await _service.register(registerModel: registerParam.toModel);
      debugPrint('register user model: $userModel');
      _localService.saveToken(token: userModel.token).then((value) {
        debugPrint('register save token: $value');
      });

      return right(userModel.userData.fromModel);
    } catch (error) {
      debugPrint('Register Error: $error');
      return left(const Failure(message: 'Register Error'));
    }
  }

  @override
  Future<Either<Failure, String>> logout() async {
    debugPrint('start logout...');
    String? token = _localService.getToken();
    if (token != null) {
      try {
        final logoutResult =
            await _service.logout(token: '$bearerToken $token');

        debugPrint('you have logged out...');

        // remove token from local
        await _localService.deleteToken();

        return right(logoutResult);
      } catch (error) {
        debugPrint('Logout Catch Error: $error');

        return left(Failure(message: error.toString()));
      }
    } else {
      debugPrint('Logout Error: No Token');
      //todo handle error
      return left(const Failure(message: 'Logout Error'));
    }
  }

  @override
  Future<Either<Failure, String>> getToken() async {
    String? token = _localService.getToken();
    //if (token == null) return left(const Failure(message: 'Token Null'));
    //return right(token); todo
    return right('token');
  }

  @override
  Future<Either<Failure, String>> resetPassword({required String email}) async {
    debugPrint('Reset Password start...');

    try {
      final result = await _service.resetPassword(email: email);
      debugPrint('resetPassword $result');

      return right(result);
    } catch (error) {
      debugPrint('Reset Error: $error');
      return left(const Failure(message: 'Reset Password Error'));
    }
  }
}
