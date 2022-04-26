import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/cart/domain/data/repository/cart_repository.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCart extends UseCase<List<CartItem>, NoParams> {
  final CartRepository _cartRepository;

  GetCart(this._cartRepository);

  @override
  Future<Either<Failures, List<CartItem>>> call(NoParams params) async {
    return await _cartRepository.getCart();
  }
}
