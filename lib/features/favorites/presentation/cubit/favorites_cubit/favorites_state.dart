part of 'favorites_cubit.dart';

@Freezed()
class FavoritesState with _$FavoritesState {
  factory FavoritesState.init() = _init;

  factory FavoritesState.loading() = _loading;

  factory FavoritesState.error() = _error;

  factory FavoritesState.done() = _done;
}
