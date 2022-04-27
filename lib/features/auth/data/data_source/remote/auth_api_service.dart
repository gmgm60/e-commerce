import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/auth/data/models/login/login_model.dart';
import 'package:ecommerce/features/auth/data/models/register/register_model.dart';
import 'package:ecommerce/features/auth/data/models/user/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'auth_api_service.g.dart';

@singleton
@RestApi(baseUrl: baseUrl)
abstract class AuthApiService {
  @factoryMethod
  factory AuthApiService(Dio dio) = _AuthApiService;

  @POST(registerEndPoint)
  Future<UserModel> register({@Body() required RegisterModel registerModel});

  @POST(loginEndPoint)
  Future<UserModel> login({@Body() required LoginModel loginModel});

  @GET(logoutEndPoint)
  Future<String> logout();

  @POST(resetPassEndPoint)
  Future<String> resetPassword({@Body() required String email});
}
