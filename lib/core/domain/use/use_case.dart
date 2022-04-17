import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';


abstract class UseCase<Type, Params> {
  Future<Either<Failures, Type>> call(Params params);
}

class NoParams {}
