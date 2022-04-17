import 'package:ecommerce/core/constants/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalizationService {
  Future<bool> changeLocaleCode({required String localeCode});

  String? getLocaleCode();
}

@Singleton(as: LocalizationService)
class LocaleServiceImpl extends LocalizationService {
  final SharedPreferences _preferences;

  LocaleServiceImpl(this._preferences);

  @override
  String? getLocaleCode() {
    return _preferences.getString(localeCodeKey);
  }

  @override
  Future<bool> changeLocaleCode({required String localeCode}) async {
    return await _preferences.setString(localeCodeKey, localeCode);
  }
}
