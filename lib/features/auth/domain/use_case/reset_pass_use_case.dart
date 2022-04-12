import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/app_use_case/app_use_case.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ResetPassUseCase extends AppUseCase<String, String> {
  final AuthRepository _repository;

  ResetPassUseCase(this._repository);

  @override
  Future<Either<Failure, String>> call(String params) {
    return _repository.resetPassword(email: params);
  }
}
