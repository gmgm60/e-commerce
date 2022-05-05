import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchants_states.freezed.dart';

@freezed
class MerchantsStates with _$MerchantsStates {
  const factory MerchantsStates.initial() = MerchantsInitialState;

  const factory MerchantsStates.loading() = MerchantsLoadingState;

  const factory MerchantsStates.loaded({required List<Merchant> merchants}) =
      MerchantsLoadedState;

  const factory MerchantsStates.detailsLoaded(
      {required MerchantDetails merchantDetails}) = MerchantDetailsLoadedState;

  const factory MerchantsStates.error({required String error}) =
      MerchantsErrorState;
}
