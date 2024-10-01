import '../../../errors/app_error.dart';

/// Exception thrown when there is a connection error.
///
/// The `ConnectionException` is a specialized exception that inherits from
/// `AppException`. It indicates that an error occurred due to a connection issue.
class ConnectionException extends AppException {
  /// Constructs a `ConnectionException`.
  const ConnectionException({
    required super.message,
    required super.stackTrace,
  }) : super(code: 'connection_exception');
}
