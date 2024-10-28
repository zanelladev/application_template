import 'dart:async';

/// Interface for Remote Config service.
///
/// This interface allows developers to control the behavior and appearance of applications
/// without the need to release a new version of the application in the app store.
abstract interface class IRemoteConfigService {
  /// Retrieves a [String] value from the remote config.
  ///
  /// If the specified [key] is not found, an empty string will be returned.
  ///
  /// - [key]: The primary key to look up in the remote config.
  ///
  /// Returns a [Future] that completes with the configuration value.
  FutureOr<String> getString({required String key});

  /// Retrieves a [Map] of key-value pairs from the remote config.
  ///
  /// The specified [key] is used to look up the JSON value in the remote config.
  ///
  /// - [key]: The primary key to look up in the remote config.
  ///
  /// Returns a [Future] that completes with the JSON configuration as a [Map<String, dynamic>].
  FutureOr<Map<String, dynamic>> getJson({required String key});
}
