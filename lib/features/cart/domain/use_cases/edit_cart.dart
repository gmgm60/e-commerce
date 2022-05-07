import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/cart/domain/data/repository/cart_repository.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_edit/cart_edit.dart';
import 'package:injectable/injectable.dart';

@injectable
class EditCart extends UseCase<Unit, CartEdit> {
  final CartRepository _cartRepository;

  EditCart(this._cartRepository);

  @override
  Future<Either<AppFailure, Unit>> call(CartEdit params) async {
    return await _cartRepository.editCart(cartEdit: params);
  }
}
