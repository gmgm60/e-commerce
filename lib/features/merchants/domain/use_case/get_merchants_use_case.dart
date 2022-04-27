import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/features/merchants/domain/repository/merchants_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMerchantsUseCase extends UseCase<List<Merchant>, NoParams> {
  final MerchantsRepository _repository;

  GetMerchantsUseCase(this._repository);

  @override
  Future<Either<AppFailure, List<Merchant>>> call(NoParams params) {
    return _repository.getMerchants();
  }
}
