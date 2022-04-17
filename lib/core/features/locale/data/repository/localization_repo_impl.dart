import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/core/features/locale/data/data_source/local/localization_service.dart';
import 'package:ecommerce/core/features/locale/domain/repository/localization_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LocalizationRepository)
class LocalizationRepoImpl extends LocalizationRepository {
  final LocalizationService _localizationService;

  LocalizationRepoImpl(this._localizationService);

  @override
  Future<Either<Failure, bool>> changeLocaleCode(
      {required String localeCode}) async {
    final result = await _localizationService.changeLocaleCode(
        localeCode: localeCode);
    return result == true
        ? right(true)
        : left(const Failure(message: 'Can Not Save Into Shared Preferences'));
  }

  @override
  Future<Either<Failure, String>> getLocaleCode() async {
    final result = _localizationService.getLocaleCode();
    return result != null
        ? right(result)
        : left(const Failure(message: 'No Locale in shared preferences'));
  }
}
