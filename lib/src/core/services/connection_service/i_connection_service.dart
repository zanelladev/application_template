/// Interface for a connection service.
///
/// The `IConnectionService` interface defines a contract for checking network
/// connectivity status. Implementations of this interface should provide the
/// logic to determine whether the device currently has an active network connection.
abstract interface class IConnectionService {
  /// Checks if the device has an active network connection.
  ///
  /// This method returns a `Future` that completes with a boolean value indicating
  /// the presence of an active network connection. Implementations should handle
  /// the necessary logic to determine the connection status.
  Future<bool> hasConnection();
}
