import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/merchants/domain/use_case/get_merchants_use_case.dart';
import 'package:ecommerce/features/merchants/presentation/bloc/merchants_cubit/merchants_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class MerchantsCubit extends Cubit<MerchantsStates> {
  MerchantsCubit(this._getMerchantsUseCase)
      : super(const MerchantsInitialState());

  final GetMerchantsUseCase _getMerchantsUseCase;

  void getMerchants() async {
    emit(const MerchantsLoadingState());
    final result = await _getMerchantsUseCase(NoParams());
    emit(result.fold((error) => MerchantsErrorState(error: error.error),
        (merchants) => MerchantsLoadedState(merchants: merchants)));
  }
}
