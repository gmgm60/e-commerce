import 'package:ecommerce/core/app_use_case/app_use_case.dart';
import 'package:ecommerce/features/profile/domain/use_case/get_user_use_case.dart';
import 'package:ecommerce/features/profile/presentation/bloc/profile_cubit/profile_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit(this._getUserUseCase) : super(const ProfileInitialState());
  final GetUserUseCase _getUserUseCase;

  Future<void> getUser() async {
    emit(const ProfileLoadingState());
    final result = await _getUserUseCase.call(NoParams());
    emit(result.fold((error) {
      return ProfileErrorState(error: error.message);
    }, (user) {
      return ProfileLoadedState(user: user);
    }));
  }
}
