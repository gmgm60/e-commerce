
import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/app_use_case/app_use_case.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/features/merchants/domain/repository/merchants_repository.dart';
import 'package:injectable/injectable.dart';


@injectable
class GetMerchantsUseCase extends AppUseCase<List<Merchant>, NoParams>{
final MerchantsRepository _repository;

  GetMerchantsUseCase(this._repository);
  @override
  Future<Either<Failure, List<Merchant>>> call(NoParams params) {
    return _repository.getMerchants();
  }

}