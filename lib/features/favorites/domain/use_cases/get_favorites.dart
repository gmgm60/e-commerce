import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/failures.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/favorites/domain/data/repository/favorite_repository.dart';
import 'package:ecommerce/features/favorites/domain/entities/favorite_item/favorite_item.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetFavorites extends UseCase<List<FavoriteItem>, NoParams> {
  final FavoriteRepository _favoriteRepository;

  GetFavorites(this._favoriteRepository);

  @override
  Future<Either<Failures, List<FavoriteItem>>> call(NoParams params) async{
    return _favoriteRepository.getFavorites();
  }
}