import 'package:ecommerce/features/auth/data/models/register/register_model.dart';
import 'package:ecommerce/features/auth/domain/entities/register_param.dart';

extension RegisterMapper on RegisterParam {
  RegisterModel get toModel => RegisterModel(
        name: name,
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );
}
