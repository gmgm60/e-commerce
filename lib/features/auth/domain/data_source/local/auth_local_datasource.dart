import 'package:ecommerce/features/auth/data/models/user/user_model.dart';

abstract class AuthLocalDatasource {
  Future<bool> saveToken({required String token});

  String? getToken();

  Future<bool> deleteToken();

  Future<bool> saveCurrentUser({required UserModel user});

  Future<bool> deleteCurrentUser();
}
