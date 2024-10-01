/// Mixin combining query and command storage services.
///
/// The `IStorageService` mixin combines the functionality of both
/// `IQueryStorageService` and `ICommandStorageService`, providing a unified
/// interface for storage operations.
mixin IStorageService on IQueryStorageService, ICommandStorageService {}

/// Abstract interface for query storage service.
///
/// The `IQueryStorageService` interface defines methods for retrieving JSON data
/// from storage.
abstract interface class IQueryStorageService {
  /// Retrieves a JSON object from storage.
  Future<Map<String, dynamic>?> getJson({required String key});

  /// Retrieves a list of JSON objects from storage.
  Future<List<Map<String, dynamic>>?> getJsonList({required String key});
}

/// Abstract interface for command storage service.
///
/// The `ICommandStorageService` interface defines methods for saving JSON data
/// to storage.
abstract interface class ICommandStorageService {
  /// Saves a JSON object to storage.
  Future<void> saveJson({required String key, required Map<String, dynamic> json});

  /// Saves a list of JSON objects to storage.
  Future<void> saveJsonList({required String key, required List<Map<String, dynamic>> jsonList});
}
