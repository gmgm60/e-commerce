import 'package:bloc/bloc.dart';
import 'package:ecommerce/features/favorites/domain/use_cases/add_to_favorite.dart';
import 'package:ecommerce/features/favorites/domain/use_cases/get_favorites.dart';
import 'package:ecommerce/features/favorites/domain/use_cases/remove_from_favorite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favorites_cubit.freezed.dart';

part 'favorites_state.dart';

@injectable
class FavoritesCubit extends Cubit<FavoritesState> {
  final AddToFavorite _addToFavorite;
  final RemoveFromFavorite _removeFromFavorite;
  final GetFavorites _getFavorites;

  FavoritesCubit(
      this._addToFavorite, this._removeFromFavorite, this._getFavorites)
      : super(FavoritesState.init());

  Future<void> addToFavorites({required int productId}) async {
    final result = await _addToFavorite(productId);
    result.fold(
      (l) => null,
      (r) => null,
    );
  }
}
