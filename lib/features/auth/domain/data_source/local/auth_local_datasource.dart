abstract class AuthLocalDatasource {
  Future<bool> saveToken({required String token});

  String? getToken();

  Future<bool> deleteToken();
}
