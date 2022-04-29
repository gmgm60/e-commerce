import 'package:bloc/bloc.dart';
import 'package:ecommerce/core/domain/use/use_case.dart';
import 'package:ecommerce/features/favorites/domain/entities/favorite_item/favorite_item.dart';
import 'package:ecommerce/features/favorites/domain/use_cases/add_to_favorite.dart';
import 'package:ecommerce/features/favorites/domain/use_cases/get_favorites.dart';
import 'package:ecommerce/features/favorites/domain/use_cases/remove_from_favorite.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favorites_cubit.freezed.dart';

part 'favorites_state.dart';

@injectable
class FavoritesCubit extends Cubit<FavoritesState> {
  final AddToFavorite _addToFavorite;
  final RemoveFromFavorite _removeFromFavorite;
  final GetFavorites _getFavorites;

  final Map<int, FavoriteItem> favorites = {};
  int currentId = -1;

  FavoritesCubit(
      this._addToFavorite, this._removeFromFavorite, this._getFavorites)
      : super(FavoritesState.init());

  Future<void> addToFavorites({required Product product}) async {
    if (currentId ==-1) {
      favorites[product.id] = FavoriteItem(product: product);
      currentId = product.id;
      emit(FavoritesState.loading());
      // final result = await _addToFavorite(product.id);
      // result.fold(
      //   (error) {
      //     print(error.error);
      //     favorites.remove(product.id);
      //     emit(FavoritesState.error());
      //   },
      //   (unit) => emit(FavoritesState.done()),
      // );
      await Future.delayed(const Duration(milliseconds: 500));
      emit(FavoritesState.done());
      currentId = -1;
    }
  }

  Future<void> removeFromFavorites({required int productId}) async {
    if (currentId ==-1) {
      final FavoriteItem favoriteItem = favorites[productId]!;
      favorites.remove(productId);
      currentId = productId;
      emit(FavoritesState.loading());
     // final result = await _removeFromFavorite(productId);
      // result.fold(
      //   (error) {
      //     favorites[productId] = favoriteItem;
      //     emit(FavoritesState.error());
      //   },
      //   (unit) => emit(FavoritesState.done()),
      // );
     await Future.delayed(const Duration(milliseconds: 500));
      emit(FavoritesState.done());
      currentId = -1;
    }
  }

  Future<void> getFavorites() async {
    emit(FavoritesState.loading());
    final result = await _getFavorites(NoParams());
    result.fold(
      (l) {
        emit(FavoritesState.error());
      },
      (favoritesList) {
        for (Product product in favoritesList) {
          favorites[product.id] = FavoriteItem(product: product);
        }
        emit(FavoritesState.done());
      },
    );
  }
}
