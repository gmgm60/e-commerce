import 'package:ecommerce/features/auth/data/models/user/user_model.dart';
import 'package:ecommerce/features/profile/data/models/update_user/update_user_model.dart';

abstract class ProfileUserService {
  Future<UserData> getCurrentUser({required String token});

  Future<UserData> updateProfile({
    required String token,
    required UpdateUserModel updateUserModel,
  });
}
