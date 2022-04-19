import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/auth/data/models/user/user_model.dart';
import 'package:ecommerce/features/profile/data/models/update_user/update_user_model.dart';
import 'package:ecommerce/features/profile/domain/data_source/remote/profile_user_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_user_service_impl.g.dart';

@Singleton(as: ProfileUserService)
@RestApi(baseUrl: baseUrl)
abstract class ProfileUserServiceImpl implements ProfileUserService {
  @factoryMethod
  factory ProfileUserServiceImpl(Dio dio) = _ProfileUserServiceImpl;

  @override
  @GET('profile') // todo
  Future<UserData> getCurrentUser(
      {@Header(authorizationHeader) required String token});

  @override
  @POST('update_profile')
  @MultiPart()
  Future<UserData> updateProfile(
      {@Part(name: 'Authorization') required String token,
      @Part() @Body() required UpdateUserModel updateUserModel});
}
