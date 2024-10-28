import 'package:connectivity_plus/connectivity_plus.dart';

import '../exceptions/connection_exception.dart';
import '../i_connection_service.dart';

/// Implementation of the [IConnectionService] interface using the `connectivity_plus` package.
///
/// The `ConnectionService` class provides methods to check the network connectivity status
/// using the `Connectivity` class from the `connectivity_plus` package.
class ConnectionService implements IConnectionService {
  final Connectivity _connectivity;

  /// Constructs a [ConnectionService] with the given [Connectivity] instance.
  const ConnectionService(this._connectivity);

  @override
  Future<bool> hasConnection() async {
    try {
      final connectivityResult = await _connectivity.checkConnectivity();
      return connectivityResult.first != ConnectivityResult.none;
    } catch (exception, stackTrace) {
      throw ConnectionException(
        message: 'Failed to get ConnectivityResult',
        stackTrace: stackTrace,
      );
    }
  }
}
