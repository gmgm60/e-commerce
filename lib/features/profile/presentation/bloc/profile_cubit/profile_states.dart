import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_states.freezed.dart';

@freezed
class ProfileStates with _$ProfileStates {
  const factory ProfileStates.initial() = ProfileInitialState;

  const factory ProfileStates.loading() = ProfileLoadingState;

  const factory ProfileStates.loaded({required User? user}) =
      ProfileLoadedState;

  const factory ProfileStates.error({required String error}) =
      ProfileErrorState;
}
