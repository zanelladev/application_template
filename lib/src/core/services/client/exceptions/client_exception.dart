import '../../../exceptions/project_exceptions.dart';

class ClientException extends ProjectException {
  final int statusCode;

  ClientException({
    required super.message,
    required super.stackTrace,
    required this.statusCode,
  });
}
