import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/core/features/locale/domain/repository/localization_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeLocaleUseCase extends UseCase<bool, String> {
  final LocalizationRepository _localizationRepository;

  ChangeLocaleUseCase(this._localizationRepository);

  @override
  Future<Either<Failures, bool>> call(String params) {
    return _localizationRepository.changeLocaleCode(localeCode: params);
  }
}
