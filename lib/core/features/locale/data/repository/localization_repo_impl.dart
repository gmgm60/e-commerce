import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/app_exception/app_exception.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/features/locale/data/data_source/local/localization_service.dart';
import 'package:ecommerce/core/features/locale/domain/repository/localization_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LocalizationRepository)
class LocalizationRepoImpl extends LocalizationRepository {
  final LocalizationService _localizationService;

  LocalizationRepoImpl(this._localizationService);

  @override
  Future<Either<AppFailure, bool>> changeLocaleCode(
      {required String localeCode}) async {
    try {
      final result =
          await _localizationService.changeLocaleCode(localeCode: localeCode);

      return right(result);
    } on AppException catch (exception) {
      return left(
          GeneralLocalAppFailure.cantAccess(message: exception.message));
    }
  }

  @override
  Future<Either<AppFailure, String?>> getLocaleCode() async {
    try {
      final result = _localizationService.getLocaleCode();
      return right(result);
    } on AppException catch (exception) {
      return left(
          GeneralLocalAppFailure.cantAccess(message: exception.message));
    }
  }
}
