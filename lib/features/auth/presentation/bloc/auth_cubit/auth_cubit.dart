import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/auth/domain/entities/login_param.dart';
import 'package:ecommerce/features/auth/domain/entities/register_param.dart';
import 'package:ecommerce/features/auth/domain/use_case/get_token_use_case.dart';
import 'package:ecommerce/features/auth/domain/use_case/login_use_case.dart';
import 'package:ecommerce/features/auth/domain/use_case/logout_use_case.dart';
import 'package:ecommerce/features/auth/domain/use_case/register_use_case.dart';
import 'package:ecommerce/features/auth/domain/use_case/reset_pass_use_case.dart';
import 'package:ecommerce/features/auth/presentation/bloc/auth_cubit/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthCubit extends Cubit<AuthStates> {
  AuthCubit(
    this._loginUseCase,
    this._logoutUseCase,
    this._registerUseCase,
    this._getTokenUseCase,
    this._resetPassUseCase,
  ) : super(const AuthInitialState());

  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;
  final RegisterUseCase _registerUseCase;
  final GetTokenUseCase _getTokenUseCase;
  final ResetPassUseCase _resetPassUseCase;

  Future<void> getHomeScreen() async {
    emit(const AuthLoadingState());

    final result = await _getTokenUseCase(NoParams());
    emit(result.fold((error) => AuthErrorState(error: error.error),
        (token) => const AuthLoadedState()));
  }

  Future<void> register({required RegisterParam registerParam}) async {
    emit(const AuthLoadingState());
    final result = await _registerUseCase(registerParam);
    emit(result.fold((error) => AuthErrorState(error: error.error),
        (user) => const AuthLoadedState()));
  }

  Future<void> login({required LoginParam loginParam}) async {
    emit(const AuthLoadingState());
    final result = await _loginUseCase(loginParam);
    emit(result.fold((error) => AuthErrorState(error: error.error),
        (user) => const AuthLoadedState()));
  }

  Future<void> logout() async {
    emit(const AuthLoadingState());
    final result = await _logoutUseCase(NoParams());
    emit(result.fold((error) {
      debugPrint(error.error);
      return AuthErrorState(error: error.error);
    }, (done) {
      return const AuthLogoutState();
    }));
  }

  Future<void> resetPassword({required String email}) async {
    emit(const AuthLoadingState());
    final result = await _resetPassUseCase(email);
    emit(result.fold((error) => AuthErrorState(error: error.error),
        (user) => const AuthLoadedState()));
  }
}
