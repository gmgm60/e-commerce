import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/auth/domain/entities/login_param.dart';
import 'package:ecommerce/features/auth/domain/entities/register_param.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<Either<AppFailure, User>> login({required LoginParam loginParam});

  Future<Either<AppFailure, User>> register(
      {required RegisterParam registerParam});

  Future<Either<AppFailure, String>> logout();

  Future<Either<AppFailure, String>> getToken();

  Future<Either<AppFailure, String>> resetPassword({required String email});
}
