class ClientRequestDTO {
  final String path;
  final Map<String, dynamic>? data;
  final Map<String, dynamic>? queryParameters;
  final Map<String, String>? headers;

  const ClientRequestDTO({
    required this.path,
    this.data,
    this.queryParameters,
    this.headers,
  });
}
