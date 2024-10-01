import 'dart:async';

/// A utility class for throttling function calls.
///
/// The `Throttle` class helps to ensure that a particular function does not
/// execute more frequently than the specified duration. It can be useful for
/// scenarios such as limiting the rate of network requests or other high-frequency
/// operations.
class Throttle {
  /// The duration in milliseconds for which the function calls will be throttled.
  final int milliseconds;

  Timer? _timer;
  bool _isReady = true;

  /// Creates a [Throttle] with the specified duration [milliseconds].
  Throttle({required this.milliseconds});

  /// Creates a [Throttle] with 200 milliseconds
  factory Throttle.fast() => Throttle(milliseconds: 200);

  /// Creates a [Throttle] with 400 milliseconds
  factory Throttle.medium() => Throttle(milliseconds: 400);

  /// Creates a [Throttle] with 600 milliseconds
  factory Throttle.slow() => Throttle(milliseconds: 600);

  /// Runs the provided [action] if it is not called again within the throttle period.
  ///
  /// If this method is called again before the throttle period has passed, the
  /// call is ignored until the period is over.
  ///
  /// - Parameters:
  ///   - action: The callback to be executed after the throttle period. Can be synchronous
  ///     or asynchronous.
  void run(FutureOr<void> Function() action) {
    if (_isReady) {
      _isReady = false;

      action();
      _timer = Timer(Duration(milliseconds: milliseconds), () => _isReady = true);
    }
  }

  /// Disposes of the current timer if it is active.
  ///
  /// This method should be called to clean up resources when the throttle is no
  /// longer needed.
  void dispose() {
    _timer?.cancel();
  }
}
