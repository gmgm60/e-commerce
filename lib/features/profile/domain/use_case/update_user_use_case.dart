import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/profile/domain/entities/update_user/update_user.dart';
import 'package:ecommerce/features/profile/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateUserUseCase extends UseCase<User, UpdateUser> {
  final ProfileRepository _repository;

  UpdateUserUseCase(this._repository);

  @override
  Future<Either<AppFailure, User>> call(UpdateUser params) {
    return _repository.updateProfile(updateUser: params);
  }
}
