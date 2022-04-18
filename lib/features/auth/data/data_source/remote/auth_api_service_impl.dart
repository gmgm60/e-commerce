import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/auth/data/models/login/login_model.dart';
import 'package:ecommerce/features/auth/data/models/register/register_model.dart';
import 'package:ecommerce/features/auth/data/models/user/user_model.dart';
import 'package:ecommerce/features/auth/domain/data_source/remote/auth_api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'auth_api_service_impl.g.dart';

@Singleton(as: AuthApiService)
@RestApi(baseUrl: baseUrl)
abstract class AuthApiServiceImpl implements AuthApiService {
  @factoryMethod
  factory AuthApiServiceImpl(Dio dio) = _AuthApiServiceImpl;

  @override
  @POST(registerEndPoint)
  Future<UserModel> register({@Body() required RegisterModel registerModel});

  @override
  @POST(loginEndPoint)
  Future<UserModel> login({@Body() required LoginModel loginModel});

  @override
  @GET(logoutEndPoint)
  Future<String> logout({@Header(authorizationHeader) required String token});

  @override
  @POST(resetPassEndPoint)
  Future<String> resetPassword({@Body() required String email});
}
