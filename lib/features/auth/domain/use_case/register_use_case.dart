import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/app_use_case/app_use_case.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/auth/domain/entities/register_param.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUseCase extends AppUseCase<User, RegisterParam> {
  final AuthRepository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<Either<Failure, User>> call(RegisterParam params) {
    return _repository.register(registerParam: params);
  }
}
