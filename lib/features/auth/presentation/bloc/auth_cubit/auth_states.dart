import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_states.freezed.dart';

@freezed
class AuthStates with _$AuthStates {
  const factory AuthStates.initial() = AuthInitialState;

  const factory AuthStates.loading() = AuthLoadingState;

  const factory AuthStates.loaded() = AuthLoadedState;

  const factory AuthStates.error({required String error}) = AuthErrorState;
  const factory AuthStates.loggOut() = AuthLogoutState;
}
