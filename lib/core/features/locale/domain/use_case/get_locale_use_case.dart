import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/core/features/locale/domain/repository/localization_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLocaleUseCase extends UseCase<String, NoParams> {
  final LocalizationRepository _localizationRepository;

  GetLocaleUseCase(this._localizationRepository);

  @override
  Future<Either<Failures, String>> call(NoParams params) {
    return _localizationRepository.getLocaleCode();
  }
}
