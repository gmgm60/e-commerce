import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/features/auth/data/models/user/user_model.dart';
import 'package:ecommerce/features/profile/data/data_source/remote/profile_user_service.dart';
import 'package:ecommerce/features/profile/data/models/update_user/update_user_model.dart';
import 'package:ecommerce/features/profile/domain/data_source/remote/profile_remote_datasource.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileRemoteDatasource)
class ProfileRemoteDatasourceImpl extends ProfileRemoteDatasource {
  final ProfileUserService _profileUserService;

  ProfileRemoteDatasourceImpl(this._profileUserService);

  @override
  Future<UserData> getCurrentUser() async {
    try {
      return await _profileUserService.getCurrentUser();
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future<UserData> updateProfile(
      {required UpdateUserModel updateUserModel}) async {
    try {
      return await _profileUserService.updateProfile(
          updateUserModel: updateUserModel);
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
