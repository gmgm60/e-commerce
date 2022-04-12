import 'package:ecommerce/features/auth/data/models/user/user_model.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';

extension UserMapper on UserData {
  User get fromModel => User(
        name: name,
        email: email,
        address: address?? '',
        phone: phone,
        image: image ?? '',
      );
}
