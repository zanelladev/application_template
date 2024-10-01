import '../../../errors/app_error.dart';

/// An exception that indicates a failure in the purchase process.
///
/// This exception should be thrown when a purchase attempt fails.
class FailPurchaseException extends AppException {
  /// Constructs a [FailPurchaseException] with the given error [message] and [stackTrace].
  ///
  /// - Parameter message: A description of the error that occurred.
  /// - Parameter stackTrace: The stack trace at the point where the exception was thrown.
  const FailPurchaseException({
    required super.message,
    required super.stackTrace,
  }) : super(code: 'fail_purchase');
}

/// An exception that indicates a failure in retrieving product purchase details.
///
/// This exception should be thrown when there is an error obtaining product purchase information.
class GetProductPurchaseException extends AppException {
  /// Constructs a [GetProductPurchaseException] with the given error [message] and [stackTrace].
  ///
  /// - Parameter message: A description of the error that occurred.
  /// - Parameter stackTrace: The stack trace at the point where the exception was thrown.
  GetProductPurchaseException({
    required super.message,
    required super.stackTrace,
  }) : super(code: 'get_product_purchase');
}
