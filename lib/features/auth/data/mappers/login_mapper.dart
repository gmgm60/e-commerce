import 'package:ecommerce/features/auth/data/models/login/login_model.dart';
import 'package:ecommerce/features/auth/domain/entities/login_param.dart';

extension LoginMapper on LoginParam {
  LoginModel get toModel => LoginModel(
        email: email,
        password: password,
      );
}
