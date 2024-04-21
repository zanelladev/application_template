import '../../../exceptions/template_exception.dart';

class ClientException extends TemplateException {
  final int statusCode;

  ClientException({
    required super.message,
    required super.stackTrace,
    required this.statusCode,
  });
}
