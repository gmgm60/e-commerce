import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ResetPassUseCase extends UseCase<String, String> {
  final AuthRepository _repository;

  ResetPassUseCase(this._repository);

  @override
  Future<Either<AppFailure, String>> call(String params) {
    return _repository.resetPassword(email: params);
  }
}
