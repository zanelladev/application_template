/// A base class for representing failures in the application.
///
/// This class extends [AppError] and is used to define specific types of failures.
/// Each failure must provide a [message] and a [code], and inherits the [stackTrace] from [AppError].
abstract class AppFailure extends AppError {
  /// Constructs a [AppFailure].
  ///
  /// - [message]: The message describing the failure.
  /// - [code]: The code of the failure.
  const AppFailure({
    required super.message,
    required super.code,
  }) : super(stackTrace: StackTrace.empty);
}

/// A base class for representing exceptions in the application.
///
/// This class extends [AppError] and implements [Exception] to define specific types of exceptions.
/// Each exception must provide a [message], [code], and a [stackTrace].
abstract class AppException extends AppError implements Exception {
  /// Constructs a [AppException].
  ///
  /// - [message]: The message describing the exception.
  /// - [code]: The code of the exception.
  /// - [stackTrace]: The stack trace of the exception.
  const AppException({
    required super.message,
    required super.code,
    required super.stackTrace,
  });
}

/// A base class for representing errors in the application.
///
/// This class defines the structure for error handling, including a [message], [stackTrace], and [code].
sealed class AppError {
  /// The message describing the error.
  final String message;

  /// The [StackTrace] used to reference the error log.
  final StackTrace stackTrace;

  /// The code of the error, used to identify the type of error without knowing the specific implementation.
  final String code;

  /// Constructs a [AppError].
  ///
  /// - [message]: The message describing the error.
  /// - [code]: The code of the error.
  /// - [stackTrace]: The stack trace of the error. If not provided, defaults to [StackTrace.empty].
  const AppError({
    required this.message,
    required this.code,
    required this.stackTrace,
  });

  @override
  String toString() {
    return '${runtimeType.runtimeType}: $message\n' '$stackTrace';
  }
}
