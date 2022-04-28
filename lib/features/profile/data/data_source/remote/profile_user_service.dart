import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/auth/data/models/user/user_model.dart';
import 'package:ecommerce/features/profile/data/models/update_user/update_user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_user_service.g.dart';

@singleton
@RestApi(baseUrl: baseUrl)
abstract class ProfileUserService {
  @factoryMethod
  factory ProfileUserService(Dio dio) = _ProfileUserService;

  @GET('profile')
  Future<UserData> getCurrentUser();

  @POST('update_profile')
  @MultiPart()
  Future<UserData> updateProfile(
      {@Part() @Body() required UpdateUserModel updateUserModel});
}
