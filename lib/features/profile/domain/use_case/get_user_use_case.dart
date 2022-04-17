import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/app_use_case/app_use_case.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/profile/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserUseCase extends AppUseCase<User, NoParams> {
  final ProfileRepository _repository;

  GetUserUseCase(this._repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) {
    return _repository.getUser();
  }
}
