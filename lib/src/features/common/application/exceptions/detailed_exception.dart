enum DetailedExceptionType {
  /// Client makes a mistake in request.
  failure,

  /// A situation on a server, that should not occurs.
  unexpected,

  /// Client pass correct data, but something has wrong format or invalid value.
  validation,

  /// Conflict between current request and current state of a server.
  conflict,

  /// A data that request need is not found.
  notFound,

  /// Client must be authorized before sending current response.
  unauthorized,
}

class DetailedException implements Exception {
  const DetailedException({
    required this.type,
    required this.code,
    required this.description,
  });

  const DetailedException.failure({
    required this.code,
    required this.description,
  }) : type = DetailedExceptionType.failure;

  const DetailedException.unexpected({
    required this.code,
    required this.description,
  }) : type = DetailedExceptionType.unexpected;

  const DetailedException.validation({
    required this.code,
    required this.description,
  }) : type = DetailedExceptionType.validation;

  const DetailedException.conflict({
    required this.code,
    required this.description,
  }) : type = DetailedExceptionType.conflict;

  const DetailedException.notFound({
    required this.code,
    required this.description,
  }) : type = DetailedExceptionType.notFound;

  const DetailedException.unauthorized({
    required this.code,
    required this.description,
  }) : type = DetailedExceptionType.unauthorized;

  final DetailedExceptionType type;
  final String code;
  final String description;
}
