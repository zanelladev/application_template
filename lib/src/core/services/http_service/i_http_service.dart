import 'dtos/http_request_dto.dart';
import 'dtos/http_response_dto.dart';

/// An abstract interface class representing the client service.
///
/// This service provides methods to handle client-related operations
/// such as retrieving and posting client data.
abstract interface class IHttpService {
  /// Retrieves client data based on the provided [HttpRequestDTO].
  ///
  /// This method performs a GET request to fetch client details.
  ///
  /// - Parameter [dto]: The data transfer object containing the details
  ///   required to perform the GET request.
  ///
  /// Returns a [Future] that completes with a [HttpResponseDTO] containing
  /// the retrieved client data.
  Future<HttpResponseDTO> get(HttpRequestDTO dto);

  /// Posts new client data based on the provided [HttpRequestDTO].
  ///
  /// This method performs a POST request to submit new client details.
  ///
  /// - Parameter [dto]: The data transfer object containing the details
  ///   required to perform the POST request.
  ///
  /// Returns a [Future] that completes with a [HttpResponseDTO] confirming
  /// the submission of the client data.
  Future<HttpResponseDTO> post(HttpRequestDTO dto);

  /// Updates client data based on the provided [HttpRequestDTO].
  ///
  /// This method performs a PUT request to update existing client details.
  ///
  /// - Parameter [dto]: The data transfer object containing the details
  ///   required to perform the PUT request.
  ///
  /// Returns a [Future] that completes with a [HttpResponseDTO] confirming
  /// the update of the client data.
  Future<HttpResponseDTO> put(HttpRequestDTO dto);

  /// Partially updates client data based on the provided [HttpRequestDTO].
  ///
  /// This method performs a PATCH request to update existing client details.
  ///
  /// - Parameter [dto]: The data transfer object containing the details
  ///   required to perform the PATCH request.
  ///
  /// Returns a [Future] that completes with a [HttpResponseDTO] confirming
  /// the partial update of the client data.
  Future<HttpResponseDTO> patch(HttpRequestDTO dto);

  /// Deletes client data based on the provided [HttpRequestDTO].
  ///
  /// This method performs a DELETE request.
  ///
  /// - Parameter [dto]: The data transfer object containing the details
  ///   required to perform the DELETE request.
  ///
  /// Returns a [Future] that completes with a [HttpResponseDTO] confirming
  /// the deletion.
  Future<HttpResponseDTO> delete(HttpRequestDTO dto);
}
