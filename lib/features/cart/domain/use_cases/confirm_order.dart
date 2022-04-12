import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/cart/domain/data/repository/cart_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConfirmOrder extends UseCase<Unit, NoParams> {
  final CartRepository _cartRepository;

  ConfirmOrder(this._cartRepository);

  @override
  Future<Either<Failures, Unit>> call(NoParams params) async {
    return await _cartRepository.confirmOrder();
  }
}