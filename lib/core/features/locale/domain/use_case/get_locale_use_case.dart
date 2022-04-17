
import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/app_use_case/app_use_case.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/core/features/locale/domain/repository/localization_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLocaleUseCase extends AppUseCase<String, NoParams>{
 final  LocalizationRepository _localizationRepository;

  GetLocaleUseCase(this._localizationRepository);
  @override
  Future<Either<Failure, String>> call(NoParams params) {
    return _localizationRepository.getLocaleCode();
  }

}