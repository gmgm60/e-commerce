import 'package:dio/dio.dart';
import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/features/auth/data/data_source/remote/auth_api_service.dart';
import 'package:ecommerce/features/auth/data/models/login/login_model.dart';
import 'package:ecommerce/features/auth/data/models/register/register_model.dart';
import 'package:ecommerce/features/auth/data/models/user/user_model.dart';
import 'package:ecommerce/features/auth/domain/data_source/remote/auth_remote_datasource.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRemoteDatasource)
class AuthRemoteDatasourceImpl extends AuthRemoteDatasource {
  final AuthApiService _authApiService;

  AuthRemoteDatasourceImpl(this._authApiService);

  @override
  Future<UserModel> login({required LoginModel loginModel}) async {
    try {
      return await _authApiService.login(loginModel: loginModel);
    } catch (e) {
     throw throwAppException(e);
    }
  }

  @override
  Future<String> logout() async {
    try {
      return await _authApiService.logout();
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future<UserModel> register({required RegisterModel registerModel}) async {
    try {
      return await _authApiService.register(registerModel: registerModel);
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future<String> resetPassword({required String email}) async {
    try {
      return await _authApiService.resetPassword(email: email);
    }on DioError catch(dioError){
      throw throwAppException(dioError);
    }

    catch (e) {
      throw throwAppException(e);
    }
  }
}
