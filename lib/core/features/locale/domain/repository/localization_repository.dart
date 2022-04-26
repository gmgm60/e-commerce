import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/app_failure.dart';

abstract class LocalizationRepository {
  Future<Either<Failures, String>> getLocaleCode();

  Future<Either<Failures, bool>> changeLocaleCode({required String localeCode});
}
