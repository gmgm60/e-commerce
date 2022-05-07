import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/features/favorites/domain/data/data_source/favorite_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: FavoriteLocalDataSource)
class FavoriteLocalDataSourceImpl extends FavoriteLocalDataSource {
  final SharedPreferences _preferences;
  final String favoritesKey = "favorites";

  FavoriteLocalDataSourceImpl(this._preferences);

  @override
  Future<List<int>> getFavoritesIds() async {
    try {
      List<String>? favorites = _preferences.getStringList(favoritesKey);
      favorites ??= [];
      return favorites.map((stringId) => int.parse(stringId)).toList();
    } catch (exception) {
      throw throwAppException(exception);
    }
  }

  @override
  Future<void> saveFavoritesIds({required List<int> favorites}) async {
    await _preferences.setStringList(
        favoritesKey, favorites.map((intId) => intId.toString()).toList());
    try {} catch (exception) {
      throw throwAppException(exception);
    }
  }
}
