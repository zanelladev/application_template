class ClientResponseDTO {
  final int statusCode;
  final dynamic body;

  const ClientResponseDTO({
    required this.statusCode,
    required this.body,
  });
}
