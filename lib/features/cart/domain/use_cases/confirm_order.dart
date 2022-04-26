import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/cart/domain/data/repository/cart_repository.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConfirmOrder extends UseCase<Unit, List<CartItem>> {
  final CartRepository _cartRepository;

  ConfirmOrder(this._cartRepository);

  @override
  Future<Either<AppFailure, Unit>> call(List<CartItem> params) async {
    return await _cartRepository.confirmOrder(cart: params);
  }
}