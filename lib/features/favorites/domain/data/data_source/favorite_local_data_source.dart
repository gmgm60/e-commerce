abstract class FavoriteLocalDataSource {
  Future<List<int>> getFavoritesIds();

  Future<void> saveFavoritesIds({required List<int> favorites});
}