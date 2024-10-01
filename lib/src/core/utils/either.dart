/// A type alias for an asynchronous operation that returns an `Either` type.
/// This is useful for functions that can result in a value of either type `TLeft` or `TRight`,
/// encapsulating the result in a `Future`.
typedef AsyncEither<TLeft, TRight> = Future<Either<TLeft, TRight>>;

/// An abstract class representing a value that can be of one of two possible types:
/// `TLeft` or `TRight`. This is the base class for `Left` and `Right`.
abstract class Either<TLeft, TRight> {
  /// Returns `true` if the value is of type `TLeft`.
  bool get isError;

  /// Returns `true` if the value is of type `TRight`.
  bool get isSuccess;

  /// Applies the appropriate function to the value, depending on its type,
  /// and returns the result.
  ///
  /// - [leftFn]: The function to apply if the value is of type `TLeft`.
  /// - [rightFn]: The function to apply if the value is of type `TRight`.
  ///
  /// Returns the result of applying the appropriate function to the value.
  T fold<T>(T Function(TLeft l) leftFn, T Function(TRight r) rightFn);
}

/// A class representing a value of type `TLeft`.
///
/// This class extends the `Either` class and overrides the necessary properties and methods.
class Left<TLeft, TRight> extends Either<TLeft, TRight> {
  /// The value of type `TLeft`.
  final TLeft value;

  /// Constructs an instance of `Left` with the given value.
  Left(this.value);

  /// Always returns `true` since this is a `Left` instance.
  @override
  final bool isError = true;

  /// Always returns `false` since this is a `Left` instance.
  @override
  final bool isSuccess = false;

  /// Applies the `leftFn` to the value and returns the result.
  ///
  /// - [leftFn]: The function to apply if the value is of type `TLeft`.
  /// - [rightFn]: The function to apply if the value is of type `TRight` (not used in this case).
  ///
  /// Returns the result of applying `leftFn` to the value.
  @override
  T fold<T>(T Function(TLeft l) leftFn, T Function(TRight r) rightFn) {
    return leftFn(value);
  }
}

/// A class representing a value of type `TRight`.
///
/// This class extends the `Either` class and overrides the necessary properties and methods.
class Right<TLeft, TRight> extends Either<TLeft, TRight> {
  /// The value of type `TRight`.
  final TRight value;

  /// Constructs an instance of `Right` with the given value.
  Right(this.value);

  /// Always returns `false` since this is a `Right` instance.
  @override
  final bool isError = false;

  /// Always returns `true` since this is a `Right` instance.
  @override
  final bool isSuccess = true;

  /// Applies the `rightFn` to the value and returns the result.
  ///
  /// - [leftFn]: The function to apply if the value is of type `TLeft` (not used in this case).
  /// - [rightFn]: The function to apply if the value is of type `TRight`.
  ///
  /// Returns the result of applying `rightFn` to the value.
  @override
  T fold<T>(T Function(TLeft l) leftFn, T Function(TRight r) rightFn) {
    return rightFn(value);
  }
}

/// An abstract class representing a unit type.
/// This class is used to represent a value that holds no information.
abstract class Unit {}

/// A private class implementing the `Unit` interface.
/// This is used internally to create the singleton `unit`.
class _Unit implements Unit {
  /// Constructs a constant instance of `_Unit`.
  const _Unit();
}

/// A constant instance of the `_Unit` class, representing a unit value.
const unit = _Unit();
