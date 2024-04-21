import 'package:shared_preferences/shared_preferences.dart';

import '../i_storage_service.dart';

class SharedPreferencesStorageService implements IStorageService {
  final SharedPreferences sharedPreferences;

  const SharedPreferencesStorageService(this.sharedPreferences);

  @override
  Future<T?> get<T>(String key) async {
    final actions = <Type, T?>{
      String: sharedPreferences.getString(key) as T?,
      int: sharedPreferences.getInt(key) as T?,
      double: sharedPreferences.getDouble(key) as T?,
      bool: sharedPreferences.getBool(key) as T?,
    };

    return actions[T.runtimeType];
  }

  @override
  Future<void> put<T>(String key, T value) async {
    final actions = <Type, Future<void> Function()>{
      String: () async => sharedPreferences.setString(key, value as String),
      int: () async => sharedPreferences.setInt(key, value as int),
      double: () async => sharedPreferences.setDouble(key, value as double),
      bool: () async => sharedPreferences.setBool(key, value as bool),
    };

    return actions[T.runtimeType]?.call();
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
