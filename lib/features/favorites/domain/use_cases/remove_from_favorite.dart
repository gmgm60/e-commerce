import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/favorites/domain/data/repository/favorite_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class RemoveFromFavorite extends UseCase<Unit, int> {
  final FavoriteRepository _favoriteRepository;

  RemoveFromFavorite(this._favoriteRepository);

  @override
  Future<Either<AppFailure, Unit>> call(int params) async {
    return _favoriteRepository.removeFromFavorite(productId: params);
  }
}
