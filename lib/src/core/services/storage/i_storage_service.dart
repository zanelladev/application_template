import 'dart:async';

abstract interface class IStorageService {
  Future<void> put(String key, int value);
  Future<int?> get(String key);
  Future<void> remove(String key);
  Future<void> clear();
}
