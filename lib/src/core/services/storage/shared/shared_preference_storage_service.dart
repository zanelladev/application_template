import 'package:shared_preferences/shared_preferences.dart';

import '../i_storage_service.dart';

class SharedPreferencesStorageService implements IStorageService {
  final SharedPreferences sharedPreferences;

  const SharedPreferencesStorageService(this.sharedPreferences);

  @override
  Future<T?> get<T>(String key) async {
    final result = switch (T) {
      String => sharedPreferences.getString(key),
      int => sharedPreferences.getInt(key),
      double => sharedPreferences.getDouble(key),
      bool => sharedPreferences.getBool(key),
      _ => null,
    };

    return result as T?;
  }

  @override
  Future<void> put<T>(String key, T value) async {
    switch (T) {
      case String:
        await sharedPreferences.setString(key, value as String);
      case int:
        await sharedPreferences.setInt(key, value as int);
      case double:
        await sharedPreferences.setDouble(key, value as double);
      case bool:
        await sharedPreferences.setBool(key, value as bool);
    }
  }

  @override
  Future<void> remove(String key) async {
    await sharedPreferences.remove(key);
  }

  @override
  Future<void> clear() async {
    await sharedPreferences.clear();
  }
}
