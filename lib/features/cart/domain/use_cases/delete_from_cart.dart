

import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/cart/domain/data/repository/cart_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteFromCart extends UseCase<Unit,int>{
  final CartRepository _cartRepository;

  DeleteFromCart(this._cartRepository);

  @override
  Future<Either<AppFailure, Unit>> call(int params)async {
    return await _cartRepository.deleteFromCart(productId: params);
  }

}