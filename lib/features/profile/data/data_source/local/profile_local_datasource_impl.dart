import 'dart:convert';

import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/auth/data/models/user/user_model.dart';
import 'package:ecommerce/features/profile/domain/data_source/local/profile_local_datasource.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: ProfileLocalDatasource)
class ProfileLocalDatasourceImpl extends ProfileLocalDatasource {
  final SharedPreferences _preferences;

  ProfileLocalDatasourceImpl(this._preferences);

  @override
  Future<UserData?> getCurrentUser() async {
    var user = _preferences.getString(currentUserKey);
    if (user != null) {
      UserModel.fromJson(json.decode(user));
      return UserModel.fromJson(json.decode(user)).userData;
    }
    return null;
  }
}
