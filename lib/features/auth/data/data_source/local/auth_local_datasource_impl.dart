import 'dart:convert';

import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/auth/data/models/user/user_model.dart';
import 'package:ecommerce/features/auth/domain/data_source/local/auth_local_datasource.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: AuthLocalDatasource)
class AuthLocalDatasourceImpl extends AuthLocalDatasource {
  final SharedPreferences _preferences;

  AuthLocalDatasourceImpl(this._preferences);

  @override
  Future<bool> deleteToken() async {
    return await _preferences.remove(tokenKey);
  }

  @override
  String? getToken() {
    return _preferences.getString(tokenKey);
  }

  @override
  Future<bool> saveToken({required String token}) async {
    return await _preferences.setString(tokenKey, token);
  }

  @override
  Future<bool> deleteCurrentUser() async {
    return await _preferences.remove(currentUserKey);
  }

  @override
  Future<bool> saveCurrentUser({required UserModel user}) async {
    return await _preferences.setString(
        currentUserKey, json.encode(user.toJson()));
  }
}
