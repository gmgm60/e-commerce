import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTokenUseCase extends UseCase<String, NoParams> {
  final AuthRepository _repository;

  GetTokenUseCase(this._repository);

  @override
  Future<Either<Failures, String>> call(NoParams params) {
    return _repository.getToken();
  }
}
