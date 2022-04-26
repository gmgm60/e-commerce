import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/app_failure.dart';
import 'package:ecommerce/features/auth/data/mappers/user_mapper.dart';
import 'package:ecommerce/features/auth/domain/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/profile/data/mappers/update_profile_mapper.dart';
import 'package:ecommerce/features/profile/domain/data_source/remote/profile_user_service.dart';
import 'package:ecommerce/features/profile/domain/entities/update_user/update_user.dart';
import 'package:ecommerce/features/profile/domain/repository/profile_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ProfileRepository)
class ProfileRepoImpl extends ProfileRepository {
  final AuthLocalService _localService;
  final ProfileUserService _profileUserService;

  ProfileRepoImpl(this._localService, this._profileUserService);

  @override
  Future<Either<Failures, User>> getUser() async {
    try {
      final token = _localService.getToken();

      debugPrint(token ?? 'No token in cash');

      if (token != null) {
        final userData =
            await _profileUserService.getCurrentUser(token: 'Bearer $token');

        debugPrint('get user data: ${userData.name}');

        return right(userData.fromModel);
      } else {
        return left(Failures.noUser('No Token'));
      }
    } catch (error) {
      return left(Failures.serverError('Get User Error'));
    }
  }

  @override
  Future<Either<Failures, User>> updateProfile(
      {required UpdateUser updateUser}) async {
    try {
      final token = _localService.getToken();
      debugPrint(token ?? 'No token in cash');

      if (token != null) {
        final userData = await _profileUserService.updateProfile(
            token: 'Bearer $token', updateUserModel: updateUser.fromDomain);

        debugPrint('update user data: ${userData.toJson()}');

        return right(userData.fromModel);
      } else {
        debugPrint('update failures: No Token');

        return left(Failures.noUser('No Token'));
      }
    } catch (error) {
      debugPrint('update failures: $error');

      return left(Failures.serverError('Update User Error'));
    }
  }
}
