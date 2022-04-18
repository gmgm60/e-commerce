import 'package:ecommerce/features/auth/data/models/login/login_model.dart';
import 'package:ecommerce/features/auth/data/models/register/register_model.dart';
import 'package:ecommerce/features/auth/data/models/user/user_model.dart';

abstract class AuthApiService {
  Future<UserModel> register({required RegisterModel registerModel});

  Future<UserModel> login({required LoginModel loginModel});

  Future<String> logout({required String token});

  Future<String> resetPassword({required String email});
}
