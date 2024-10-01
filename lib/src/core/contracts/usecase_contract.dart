import '../errors/app_error.dart';
import '../utils/either.dart';
import 'dto_contract.dart';

/// Represents an asynchronous use case contract that returns a result of type [T] wrapped in [AsyncEither].
///
/// The [execute] method should be implemented to handle the business logic of the use case.
/// If an error occurs, it should return an [AppError] wrapped in [AsyncEither].
abstract interface class AsyncUsecaseContract<T extends Object> {
  /// Executes the use case.
  ///
  /// Returns an [AsyncEither] containing either an [AppError] or a result of type [T].
  AsyncEither<AppError, T> execute();
}

/// Represents an asynchronous use case contract with parameters that returns a result of type [T] wrapped in [AsyncEither].
///
/// The [execute] method should be implemented to handle the business logic of the use case.
/// It takes a [Params] object as an input parameter.
/// If an error occurs, it should return an [AppError] wrapped in [AsyncEither].
abstract interface class AsyncUsecaseWithParamsContract<T extends Object, Params extends DTO> {
  /// Executes the use case with the provided [dto] parameter.
  ///
  /// Returns an [AsyncEither] containing either an [AppError] or a result of type [T].
  AsyncEither<AppError, T> execute(Params dto);
}

/// Represents a synchronous use case contract that returns a result of type [T] wrapped in [Either].
///
/// The [execute] method should be implemented to handle the business logic of the use case.
/// If an error occurs, it should return an [AppError] wrapped in [Either].
abstract interface class UsecaseContract<T extends Object> {
  /// Executes the use case.
  ///
  /// Returns an [Either] containing either an [AppError] or a result of type [T].
  Either<AppError, T> execute();
}

/// Represents a synchronous use case contract with parameters that returns a result of type [T] wrapped in [Either].
///
/// The [execute] method should be implemented to handle the business logic of the use case.
/// It takes a [Params] object as an input parameter.
/// If an error occurs, it should return an [AppError] wrapped in [Either].
abstract interface class UsecaseWithParamsContract<T extends Object, Params extends DTO> {
  /// Executes the use case with the provided [dto] parameter.
  ///
  /// Returns an [Either] containing either an [AppError] or a result of type [T].
  Either<AppError, T> execute(Params dto);
}
