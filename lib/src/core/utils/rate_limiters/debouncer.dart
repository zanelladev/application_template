import 'dart:async';

/// A utility class for debouncing function calls.
///
/// The `Debouncer` class helps to ensure that a particular function does not
/// execute too frequently by introducing a delay. It can be useful for
/// scenarios such as debouncing user input events or other high-frequency
/// operations.
class Debouncer {
  /// The delay duration in milliseconds.
  final int milliseconds;

  Timer? _timer;

  /// Creates a [Debouncer] with the specified delay [milliseconds].
  Debouncer({required this.milliseconds});

  /// Creates a [Debouncer] with 200 milliseconds
  factory Debouncer.fast() => Debouncer(milliseconds: 200);

  /// Creates a [Debouncer] with 400 milliseconds
  factory Debouncer.medium() => Debouncer(milliseconds: 400);

  /// Creates a [Debouncer] with 600 milliseconds
  factory Debouncer.slow() => Debouncer(milliseconds: 600);

  /// Runs the provided [action] after the specified delay.
  ///
  /// If this method is called again before the delay has passed, the previous
  /// timer is canceled and the delay is reset.
  ///
  /// - Parameters:
  ///   - action: The callback to be executed after the delay. Can be synchronous
  ///     or asynchronous.
  void run(FutureOr<void> Function() action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  /// Disposes of the current timer if it is active.
  ///
  /// This method should be called to clean up resources when the debouncer is no
  /// longer needed.
  void dispose() {
    _timer?.cancel();
  }
}
