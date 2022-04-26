import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/favorites/domain/data/repository/favorite_repository.dart';
import 'package:injectable/injectable.dart';
@Injectable()
class AddToFavorite extends UseCase<Unit, int> {
  final FavoriteRepository _favoriteRepository;

  AddToFavorite(this._favoriteRepository);

  @override
  Future<Either<Failures, Unit>> call(int params) async{
    return _favoriteRepository.addToFavorite(productId: params);
  }
}
