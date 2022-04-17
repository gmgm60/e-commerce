import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';

abstract class ProfileRepository {
  Future<Either<Failure, User>> getUser();
}
