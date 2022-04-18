import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';

abstract class ProfileRepository {
  Future<Either<Failures, User>> getUser();
}
