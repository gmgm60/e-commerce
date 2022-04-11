import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/app_use_case/app_use_case.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase extends AppUseCase<String, NoParams> {
  final AuthRepository _repository;

  LogoutUseCase(this._repository);

  @override
  Future<Either<Failure, String>> call(NoParams params) {
    return _repository.logout();
  }
}
