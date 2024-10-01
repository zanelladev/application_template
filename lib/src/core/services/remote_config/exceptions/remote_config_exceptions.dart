import '../../../errors/app_error.dart';

/// [RemoteConfigException] is triggered when something goes wrong in the remote config service.
sealed class RemoteConfigException extends AppException {
  /// Base constructor for [RemoteConfigException].
  ///
  /// - [message]: A description of the error.
  /// - [code]: A specific code identifying the error type.
  /// - [stackTrace]: The stack trace at the point where the error occurred.
  const RemoteConfigException({
    required super.message,
    required super.code,
    required super.stackTrace,
  });
}

/// Exception thrown when there is an error retrieving a string from remote config.
class GetStringRemoteConfigException extends RemoteConfigException {
  /// Constructs a [GetStringRemoteConfigException].
  ///
  /// - [message]: A description of the error.
  /// - [stackTrace]: The stack trace at the point where the error occurred.
  GetStringRemoteConfigException({
    required super.message,
    required super.stackTrace,
  }) : super(code: 'get_string_remote_config_exception');
}

/// Exception thrown when there is an error retrieving JSON from remote config.
class GetJsonRemoteConfigException extends RemoteConfigException {
  /// Constructs a [GetJsonRemoteConfigException].
  ///
  /// - [message]: A description of the error.
  /// - [stackTrace]: The stack trace at the point where the error occurred.
  GetJsonRemoteConfigException({
    required super.message,
    required super.stackTrace,
  }) : super(code: 'get_json_remote_config_exception');
}
