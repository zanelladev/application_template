import 'dart:async';
import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../exceptions/remote_config_exceptions.dart';
import '../i_remote_config_service.dart';

/// Firebase implementation of [IRemoteConfigService].
///
/// This class provides methods to retrieve configuration values from Firebase RemoteConfig.
class FirebaseRemoteConfigService implements IRemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig;

  /// Base constructor for [FirebaseRemoteConfigService].
  ///
  /// - [_remoteConfig]: An instance of [FirebaseRemoteConfig] used to access remote configuration values.
  const FirebaseRemoteConfigService(this._remoteConfig);

  /// Retrieves a [String] value from Firebase RemoteConfig for the given [key].
  ///
  /// If an error occurs during the retrieval, a [GetStringRemoteConfigException] is thrown.
  ///
  /// - [key]: The primary key to look up in the remote config.
  ///
  /// Returns a [FutureOr] that completes with the configuration value.
  @override
  FutureOr<String> getString({required String key}) {
    try {
      return _remoteConfig.getString(key);
    } catch (error, stackTrace) {
      throw GetStringRemoteConfigException(
        message: error.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Retrieves a JSON object from Firebase RemoteConfig for the given [key].
  ///
  /// The method decodes the JSON string associated with the [key] into a [Map<String, dynamic>].
  /// If an error occurs during the retrieval or decoding, a [GetJsonRemoteConfigException] is thrown.
  ///
  /// - [key]: The primary key to look up in the remote config.
  ///
  /// Returns a [FutureOr] that completes with the JSON configuration as a [Map<String, dynamic>].
  @override
  FutureOr<Map<String, dynamic>> getJson({required String key}) {
    try {
      final response = _remoteConfig.getString(key);
      return jsonDecode(response);
    } catch (error, stackTrace) {
      throw GetJsonRemoteConfigException(
        message: error.toString(),
        stackTrace: stackTrace,
      );
    }
  }
}
