import 'package:ecommerce/features/profile/data/models/update_user/update_user_model.dart';
import 'package:ecommerce/features/profile/domain/entities/update_user/update_user.dart';

extension UpdateProfileMapper on UpdateUser {
  UpdateUserModel get fromDomain => UpdateUserModel(
        name: name,
        phone: phone,
        address: address,
        image: image,
      );
}
