import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/features/auth/data/mappers/user_mapper.dart';
import 'package:ecommerce/features/auth/domain/data_source/local/auth_local_service.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/profile/domain/data_source/remote/profile_user_service.dart';
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
      if (kDebugMode) {
        print(token ?? 'No token in cash');
      }
      if (token != null) {
        final userData =
            await _profileUserService.getCurrentUser(token: 'Bearer $token');
        if (kDebugMode) {
          print('get user data: ${userData.name}');
        }
        return right(userData.fromModel);
      } else {
        return left(Failures.noUser('No Token'));
      }
    } catch (error) {
      return left(Failures.serverError('Get User Error'));
    }
  }
}
