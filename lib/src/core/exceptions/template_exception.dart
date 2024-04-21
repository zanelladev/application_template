class TemplateException implements Exception {
  final String message;
  final StackTrace stackTrace;

  const TemplateException({
    required this.message,
    this.stackTrace = StackTrace.empty,
  });
}
