import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/profile/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserUseCase extends UseCase<User?, NoParams> {
  final ProfileRepository _repository;

  GetUserUseCase(this._repository);

  @override
  Future<Either<AppFailure, User?>> call(NoParams params) {
    return _repository.getUser();
  }
}
