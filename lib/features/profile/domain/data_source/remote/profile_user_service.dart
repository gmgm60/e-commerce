import 'package:ecommerce/features/auth/data/models/user/user_model.dart';

abstract class ProfileUserService {
  Future<UserData> getCurrentUser({required String token});
}
