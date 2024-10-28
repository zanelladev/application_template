import 'package:dio/dio.dart';

/// A factory class for creating Dio instances with a base URL
/// configured based on the provided [FlavorConfiguration].
class DioFactory {
  /// Creates and returns a Dio instance with the base URL
  /// set to the one specified in the FlavorConfiguration.
  Dio create() {
    return Dio(
      BaseOptions(baseUrl: 'base_url'),
    );
  }
}
