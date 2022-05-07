import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/merchants/domain/use_case/get_merchant_details_use_case.dart';
import 'package:ecommerce/features/merchants/domain/use_case/get_merchants_use_case.dart';
import 'package:ecommerce/features/merchants/presentation/bloc/merchants_cubit/merchants_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class MerchantsCubit extends Cubit<MerchantsStates> {
  MerchantsCubit(this._getMerchantsUseCase, this._getMerchantDetailsUseCase)
      : super(const MerchantsInitialState());

  final GetMerchantsUseCase _getMerchantsUseCase;
  final GetMerchantDetailsUseCase _getMerchantDetailsUseCase;

  Future<void> getMerchants() async {
    emit(const MerchantsLoadingState());
    final result = await _getMerchantsUseCase(NoParams());
    emit(result.fold((error) => MerchantsErrorState(error: error.message),
        (merchants) => MerchantsLoadedState(merchants: merchants)));
  }

  Future<void> getMerchantDetails({required int merchantId}) async {
    emit(const MerchantsLoadingState());
    final result = await _getMerchantDetailsUseCase(merchantId);
    emit(result.fold(
        (error) => MerchantsErrorState(error: error.message),
        (merchantDetails) =>
            MerchantDetailsLoadedState(merchantDetails: merchantDetails)));
  }
}
