import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../exceptions/storage_exceptions.dart';
import '../i_storage_service.dart';

/// Implementation of [IStorageService] using secure storage.
class SecureStorageService implements IStorageService {
  final FlutterSecureStorage _secureStorage;

  /// Constructs a [SecureStorageService] with the given [FlutterSecureStorage] instance.
  const SecureStorageService(this._secureStorage);

  /// Retrieves a JSON object from secure storage by the given [key].
  @override
  Future<Map<String, dynamic>?> getJson({required String key}) async {
    try {
      final response = await _secureStorage.read(key: key);
      return response != null ? jsonDecode(response) : null;
    } catch (exception, stackTrace) {
      throw GetJsonStorageException(
        message: 'Failed to get a JSON by key at secure storage',
        stackTrace: stackTrace,
      );
    }
  }

  /// Retrieves a list of JSON objects from secure storage by the given [key].
  @override
  Future<List<Map<String, dynamic>>?> getJsonList({required String key}) async {
    try {
      final response = await _secureStorage.read(key: key);
      if (response == null) return null;
      return List<Map<String, dynamic>>.from(jsonDecode(response));
    } catch (exception, stackTrace) {
      throw GetJsonListStorageException(
        message: 'Failed to get a JSON list by key at secure storage',
        stackTrace: stackTrace,
      );
    }
  }

  /// Saves a JSON object to secure storage with the given [key].
  @override
  Future<void> saveJson({required String key, required Map<String, dynamic> json}) async {
    try {
      await _secureStorage.write(key: key, value: jsonEncode(json));
    } catch (exception, stackTrace) {
      throw SaveJsonStorageException(
        message: 'Failed to save a JSON by key at secure storage',
        stackTrace: stackTrace,
      );
    }
  }

  /// Saves a list of JSON objects to secure storage with the given [key].
  @override
  Future<void> saveJsonList({required String key, required List<Map<String, dynamic>> jsonList}) async {
    try {
      final encodedList = jsonEncode(jsonList);
      await _secureStorage.write(key: key, value: encodedList);
    } catch (exception, stackTrace) {
      throw SaveJsonListStorageException(
        message: 'Failed to save a JSON list by key at secure storage',
        stackTrace: stackTrace,
      );
    }
  }
}
