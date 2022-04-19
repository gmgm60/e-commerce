import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/profile/domain/entities/update_user/update_user.dart';

abstract class ProfileRepository {
  Future<Either<Failures, User>> getUser();

  Future<Either<Failures, User>> updateProfile(
      {required UpdateUser updateUser});
}
