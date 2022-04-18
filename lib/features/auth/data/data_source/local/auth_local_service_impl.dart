import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/auth/domain/data_source/local/auth_local_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';


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
    return "";
    return _preferences.getString(tokenKey);
  }

  @override
  Future<bool> saveToken({required String token}) async {
    return await _preferences.setString(tokenKey, token);
  }
}
