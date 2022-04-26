import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/app_failure.dart';
import 'package:ecommerce/features/auth/domain/entities/login_param.dart';
import 'package:ecommerce/features/auth/domain/entities/register_param.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failures, User>> login({required LoginParam loginParam});

  Future<Either<Failures, User>> register(
      {required RegisterParam registerParam});

  Future<Either<Failures, String>> logout();

  Future<Either<Failures, String>> getToken();

  Future<Either<Failures, String>> resetPassword({required String email});
}
