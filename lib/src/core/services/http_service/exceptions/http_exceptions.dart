import '../../../errors/app_error.dart';

/// Base class for HTTP exceptions, extending the [AppException] class.
/// This class is sealed, meaning it cannot be directly instantiated but can be extended.
sealed class HttpException extends AppException {
  final int statusCode;

  /// Creates an [HttpException] with the provided [message], [stackTrace], and [code].
  const HttpException({
    required super.message,
    required super.stackTrace,
    required super.code,
    required this.statusCode,
  });
}

/// Exception class for HTTP GET request errors, extending [HttpException].
/// The [code] is set to 'get_http_exception' by default.
class GetHttpException extends HttpException {
  /// Creates a [GetHttpException] with the provided [message], [stackTrace] and [statusCode].
  const GetHttpException({
    required super.message,
    required super.stackTrace,
    required super.statusCode,
  }) : super(code: 'get_http_exception');
}

/// Exception class for HTTP POST request errors, extending [HttpException].
/// The [code] is set to 'post_http_exception' by default.
class PostHttpException extends HttpException {
  /// Creates a [PostHttpException] with the provided [message], [stackTrace] and [statusCode].
  const PostHttpException({
    required super.message,
    required super.stackTrace,
    required super.statusCode,
  }) : super(code: 'post_http_exception');
}

class PutHttpException extends HttpException {
  /// Creates a [PutHttpException] with the provided [message], [stackTrace] and [statusCode].
  const PutHttpException({
    required super.message,
    required super.stackTrace,
    required super.statusCode,
  }) : super(code: 'put_http_exception');
}

class PatchHttpException extends HttpException {
  /// Creates a [PatchHttpException] with the provided [message], [stackTrace] and [statusCode].
  const PatchHttpException({
    required super.message,
    required super.stackTrace,
    required super.statusCode,
  }) : super(code: 'patch_http_exception');
}

class DeleteHttpException extends HttpException {
  /// Creates a [DeleteHttpException] with the provided [message], [stackTrace] and [statusCode].
  const DeleteHttpException({
    required super.message,
    required super.stackTrace,
    required super.statusCode,
  }) : super(code: 'delete_http_exception');
}
