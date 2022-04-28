import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/data/return_app_failure.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/auth/data/mappers/user_mapper.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/profile/data/mappers/update_profile_mapper.dart';
import 'package:ecommerce/features/profile/domain/data_source/remote/profile_remote_datasource.dart';
import 'package:ecommerce/features/profile/domain/entities/update_user/update_user.dart';
import 'package:ecommerce/features/profile/domain/repository/profile_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ProfileRepository)
class ProfileRepoImpl extends ProfileRepository {
  final ProfileRemoteDatasource _profileRemoteDatasource;

  ProfileRepoImpl(this._profileRemoteDatasource);

  @override
  Future<Either<AppFailure, User>> getUser() async {
    try {
      final userData = await _profileRemoteDatasource.getCurrentUser();

      return right(userData.fromModel);
    } on AppException catch (exception) {
      return left(returnAppFailure(exception));
    }
  }

  @override
  Future<Either<AppFailure, User>> updateProfile(
      {required UpdateUser updateUser}) async {
    try {
      final userData = await _profileRemoteDatasource.updateProfile(
          updateUserModel: updateUser.fromDomain);

      debugPrint('update user data: ${userData.toJson()}');

      return right(userData.fromModel);
    } on AppException catch (exception) {
      return left(returnAppFailure(exception));
    }
  }
}
