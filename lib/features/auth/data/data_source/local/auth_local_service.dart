import 'package:ecommerce/core/constants/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalService {
  Future<bool> saveToken({required String token});

  String? getToken();

  Future<bool> deleteToken();
}

@Singleton(as: AuthLocalService)
class AuthLocalServiceImpl extends AuthLocalService {
  final SharedPreferences _preferences;

  AuthLocalServiceImpl(this._preferences);

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
}
