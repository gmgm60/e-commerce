import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectionModule {
//injecting third party async libraries
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
