import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/auth/domain/entities/login_param.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase extends UseCase<User, LoginParam> {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failures, User>> call(LoginParam params) {
    return _repository.login(loginParam: params);
  }
}
