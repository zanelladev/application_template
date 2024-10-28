import '../errors/app_error.dart';
import '../utils/either.dart';

/// An abstract class representing a Data Transfer Object (DTO).
///
/// This serves as a base class for all DTOs, providing a common structure and enabling polymorphism.
abstract class DTO {
  /// Constructs a [DTO].
  const DTO();
}

/// An abstract class representing a Data Transfer Object (DTO) with validation capabilities.
///
/// This class extends [DTO] and adds a [validate] method, which should be implemented to perform validation logic.
/// The validation result is wrapped in an [Either] type, containing either an [AppFailure] or the valid [DTO].
abstract class DTOValidate extends DTO {
  /// Constructs a [DTOValidate].
  const DTOValidate();

  /// Validates the DTO and returns an [Either] containing either an [AppFailure] or the valid [DTO].
  ///
  /// Implement this method to provide custom validation logic for the DTO.
  Either<AppFailure, DTO> validate();
}
