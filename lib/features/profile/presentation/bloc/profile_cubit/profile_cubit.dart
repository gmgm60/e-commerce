import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/profile/domain/entities/update_user/update_user.dart';
import 'package:ecommerce/features/profile/domain/use_case/get_user_use_case.dart';
import 'package:ecommerce/features/profile/domain/use_case/update_user_use_case.dart';
import 'package:ecommerce/features/profile/presentation/bloc/profile_cubit/profile_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit(this._getUserUseCase, this._updateUserUseCase)
      : super(const ProfileInitialState());
  final GetUserUseCase _getUserUseCase;
  final UpdateUserUseCase _updateUserUseCase;

  Future<void> getUser() async {
    emit(const ProfileLoadingState());
    final result = await _getUserUseCase.call(NoParams());
    emit(result.fold((error) {
      return ProfileErrorState(error: error.message);
    }, (user) {
      return ProfileLoadedState(user: user);
    }));
  }

  Future<void> updateUser({required UpdateUser updateUser}) async {
    emit(const ProfileLoadingState());

    final result = await _updateUserUseCase(updateUser);
    emit(result.fold((error) {
      return ProfileErrorState(error: error.message);
    }, (user) {
      return ProfileUpdatedState(user: user);
    }));
  }
}
