import 'dart:async';

abstract interface class IStorageService {
  Future<void> put<T>(String key, T value);
  Future<T?> get<T>(String key);
  Future<void> remove(String key);
  Future<void> clear();
}
