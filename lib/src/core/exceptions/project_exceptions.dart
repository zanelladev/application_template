class ProjectException implements Exception {
  final String message;
  final StackTrace stackTrace;

  const ProjectException({
    required this.message,
    this.stackTrace = StackTrace.empty,
  });
}
