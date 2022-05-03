import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/favorites/domain/data/repository/favorite_repository.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetFavorites extends UseCase<List<Product>, NoParams> {
  final FavoriteRepository _favoriteRepository;

  GetFavorites(this._favoriteRepository);

  @override
  Future<Either<AppFailure, List<Product>>> call(NoParams params) async{
    return _favoriteRepository.getFavorites();
  }
}