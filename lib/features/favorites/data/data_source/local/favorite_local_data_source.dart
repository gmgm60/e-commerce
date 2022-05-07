import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/features/favorites/domain/data/data_source/favorite_local_data_source.dart';
import 'package:ecommerce/features/profile/domain/data_source/local/profile_local_datasource.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: FavoriteLocalDataSource)
class FavoriteLocalDataSourceImpl extends FavoriteLocalDataSource {
  final SharedPreferences _preferences;
  final ProfileLocalDatasource _profileLocalDatasource;
  final String favoritesKey = "favorites";

  FavoriteLocalDataSourceImpl(this._preferences, this._profileLocalDatasource);

  @override
  Future<List<int>> getFavoritesIds() async {
    try {
      final user = await _profileLocalDatasource.getCurrentUser();
      final email = user?.email ?? "";
      List<String>? favorites = _preferences.getStringList(favoritesKey+email);
      favorites ??= [];
      return favorites.map((stringId) => int.parse(stringId)).toList();
    } catch (exception) {
      throw throwAppException(exception);
    }
  }

  @override
  Future<void> saveFavoritesIds({required List<int> favorites}) async {

    try {
      final user = await _profileLocalDatasource.getCurrentUser();
      final email = user?.email ?? "";
      await _preferences.setStringList(
          favoritesKey+email, favorites.map((intId) => intId.toString()).toList());
    } catch (exception) {
      throw throwAppException(exception);
    }
  }


}
