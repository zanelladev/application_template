/// A class representing a http response.
///
/// This class is used to encapsulate the response received from an API call,
/// including the response body and status code.
class HttpResponseDTO {
  /// The body of the response.
  final dynamic body;

  /// The status code of the response.
  final int statusCode;

  /// Constructs a [HttpResponseDTO].
  HttpResponseDTO({
    required this.body,
    int? statusCode,
  }) : statusCode = statusCode ?? 500;
}
