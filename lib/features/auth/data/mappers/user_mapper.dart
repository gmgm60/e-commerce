import 'package:ecommerce/features/auth/data/models/user/user_model.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';

extension UserMapper on UserModelData {
  User get fromModel => User(
        id: id,
        name: userName,
        email: email,
      );
}
