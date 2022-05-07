import 'package:ecommerce/features/auth/data/models/user/user_model.dart';

abstract class ProfileLocalDatasource {
  Future<UserData?> getCurrentUser();
}
