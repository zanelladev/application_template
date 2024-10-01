import '../../../errors/app_error.dart';

/// Base class for Storage exceptions, extending the [AppException] class.
/// This class is sealed, meaning it cannot be directly instantiated but can be extended.
sealed class StorageException extends AppException {
  /// Creates an [StorageException] with the provided [message], [stackTrace], and [code].
  const StorageException({
    required super.message,
    required super.stackTrace,
    required super.code,
  });
}

/// Exception thrown when there is an error getting a JSON object from storage.
///
/// The `GetJsonStorageException` is a specialized exception that inherits from
/// `StorageException`. It indicates that an error occurred while attempting to
/// retrieve a JSON object from storage.
class GetJsonStorageException extends StorageException {
  /// Constructs a `GetJsonStorageException`.
  const GetJsonStorageException({
    required super.message,
    required super.stackTrace,
  }) : super(code: 'get_json_storage');
}

/// Exception thrown when there is an error getting a list of JSON objects from storage.
///
/// The `GetJsonListStorageException` is a specialized exception that inherits from
/// `StorageException`. It indicates that an error occurred while attempting to
/// retrieve a list of JSON objects from storage.
class GetJsonListStorageException extends StorageException {
  /// Constructs a `GetJsonListStorageException`.
  const GetJsonListStorageException({
    required super.message,
    required super.stackTrace,
  }) : super(code: 'get_json_list_storage');
}

/// Exception thrown when there is an error saving a JSON object to storage.
///
/// The `SaveJsonStorageException` is a specialized exception that inherits from
/// `StorageException`. It indicates that an error occurred while attempting to
/// save a JSON object to storage.
class SaveJsonStorageException extends StorageException {
  /// Constructs a `SaveJsonStorageException`.
  const SaveJsonStorageException({
    required super.message,
    required super.stackTrace,
  }) : super(code: 'save_json_storage');
}

/// Exception thrown when there is an error saving a list of JSON objects to storage.
///
/// The `SaveJsonListStorageException` is a specialized exception that inherits from
/// `StorageException`. It indicates that an error occurred while attempting to
/// save a list of JSON objects to storage.
class SaveJsonListStorageException extends StorageException {
  /// Constructs a `SaveJsonListStorageException`.
  const SaveJsonListStorageException({
    required super.message,
    required super.stackTrace,
  }) : super(code: 'save_json_list_storage');
}
