import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/data/return_app_failure.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/auth/data/mappers/login_mapper.dart';
import 'package:ecommerce/features/auth/data/mappers/register_mapper.dart';
import 'package:ecommerce/features/auth/data/mappers/user_mapper.dart';
import 'package:ecommerce/features/auth/domain/data_source/local/auth_local_datasource.dart';
import 'package:ecommerce/features/auth/domain/data_source/remote/auth_remote_datasource.dart';
import 'package:ecommerce/features/auth/domain/entities/login_param.dart';
import 'package:ecommerce/features/auth/domain/entities/register_param.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepoImpl extends AuthRepository {
  final AuthRemoteDatasource _authRemoteDatasource;
  final AuthLocalDatasource _localDatasource;

  AuthRepoImpl(this._authRemoteDatasource, this._localDatasource);

  @override
  Future<Either<AppFailure, User>> login(
      {required LoginParam loginParam}) async {
    debugPrint('login start...');

    try {
      final userModel =
          await _authRemoteDatasource.login(loginModel: loginParam.toModel);

      debugPrint('login user model: $userModel');

      _localDatasource.saveToken(token: userModel.token).then((value) {
        debugPrint('login save token: $value');
      });

      return right(userModel.userData.fromModel);
    } on AppException catch (exception) {
      return left(returnAppFailure(exception));
    }
  }

  @override
  Future<Either<AppFailure, User>> register(
      {required RegisterParam registerParam}) async {
    debugPrint('register start...');

    try {
      final userModel = await _authRemoteDatasource.register(
          registerModel: registerParam.toModel);
      debugPrint('register user model: $userModel');
      _localDatasource.saveToken(token: userModel.token).then((value) {
        debugPrint('register save token: $value');
      });

      return right(userModel.userData.fromModel);
    } on AppException catch (exception) {
      debugPrint('Register Error: ${exception.message}');
      return left(returnAppFailure(exception));
    }
  }

  @override
  Future<Either<AppFailure, String>> logout() async {
    debugPrint('start logout...');
    try {
      final logoutResult = await _authRemoteDatasource.logout();

      debugPrint('you have logged out...');

      // remove token from local
      await _localDatasource.deleteToken();

      return right(logoutResult);
    } on AppException catch (exception) {
      debugPrint('Logout Catch Error: ${exception.message}');

      return left(returnAppFailure(exception));
    }
  }

  @override
  Future<Either<AppFailure, String>> getToken() async {
    String? token = _localDatasource.getToken();
    if (token == null) {
      return left(GeneralRemoteAppFailure.unKnown(message: 'no token'));
    }
    return right(token);
  }

  @override
  Future<Either<AppFailure, String>> resetPassword(
      {required String email}) async {
    debugPrint('Reset Password start...');

    try {
      final result = await _authRemoteDatasource.resetPassword(email: email);
      debugPrint('resetPassword $result');

      return right(result);
    } on AppException catch (exception) {
      return left(returnAppFailure(exception));
    }
  }
}
