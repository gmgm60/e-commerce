import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant_details.dart';
import 'package:ecommerce/features/merchants/domain/repository/merchants_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMerchantDetailsUseCase extends UseCase<MerchantDetails, int> {
  final MerchantsRepository _repository;

  GetMerchantDetailsUseCase(this._repository);

  @override
  Future<Either<AppFailure, MerchantDetails>> call(int params) {
    return _repository.getMerchantDetails(merchantId: params);
  }
}
