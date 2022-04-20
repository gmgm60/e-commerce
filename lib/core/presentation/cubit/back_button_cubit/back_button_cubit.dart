import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'back_button_state.dart';
part 'back_button_cubit.freezed.dart';

@injectable
class BackButtonCubit extends Cubit<BackButtonState> {
  BackButtonCubit() : super(BackButtonState.init());

  void refresh(){
    emit(BackButtonState.refresh());
    emit(BackButtonState.init());
  }

}
