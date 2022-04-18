import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/favorites/domain/data/repository/favorite_repository.dart';

class RemoveFromFavorite extends UseCase<Unit, int> {
  final FavoriteRepository _favoriteRepository;

  RemoveFromFavorite(this._favoriteRepository);

  @override
  Future<Either<Failures, Unit>> call(int params) async{
    return _favoriteRepository.removeFromFavorite(productId: params);
  }
}