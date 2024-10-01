/// A class representing an HTTP request Data Transfer Object (DTO).
///
/// This class serves as the base for different types of HTTP requests,
/// providing common properties required for making API calls.
class HttpRequestDTO {
  /// The path of the API endpoint.
  final String path;

  /// The data to be sent with the request (optional).
  final dynamic data;

  /// The query parameters to be included in the request (optional).
  final Map<String, dynamic>? queryParameters;

  /// The headers to be included in the request (optional).
  final Map<String, String>? headers;

  /// Constructs an [HttpRequestDTO].
  const HttpRequestDTO({
    required this.path,
    this.data,
    this.queryParameters,
    this.headers,
  });
}
