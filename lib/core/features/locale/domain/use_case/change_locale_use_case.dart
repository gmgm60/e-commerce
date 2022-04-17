import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/app_use_case/app_use_case.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/core/features/locale/domain/repository/localization_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeLocaleUseCase extends AppUseCase<bool, String> {
  final LocalizationRepository _localizationRepository;

  ChangeLocaleUseCase(this._localizationRepository);

  @override
  Future<Either<Failure, bool>> call(String params) {
    return _localizationRepository.changeLocaleCode(localeCode: params);
  }
}
