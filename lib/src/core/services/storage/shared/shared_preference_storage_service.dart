import 'package:shared_preferences/shared_preferences.dart';

import '../i_storage_service.dart';

class SharedPreferencesStorageService implements IStorageService {
  @override
  Future<void> put(String key, int value) async {
    final shared = await SharedPreferences.getInstance();
    await shared.setInt(key, value);
  }

  @override
  Future<int?> get(String key) async {
    final shared = await SharedPreferences.getInstance();
    return shared.getInt(key);
  }

  @override
  Future<void> remove(String key) async {
    final shared = await SharedPreferences.getInstance();
    await shared.remove(key);
  }

  @override
  Future<void> clear() async {
    final shared = await SharedPreferences.getInstance();
    await shared.clear();
  }
}
