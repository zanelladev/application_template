import 'package:dio/dio.dart';

import '../dtos/http_request_dto.dart';
import '../dtos/http_response_dto.dart';
import '../exceptions/http_exceptions.dart';
import '../i_http_service.dart';

/// A service implementation that uses the Dio package to perform HTTP requests.
///
/// This class implements the [IHttpService] interface to provide
/// methods for making GET, POST, PUT, PATCH, and DELETE requests.
class DioHttpService implements IHttpService {
  final Dio _dio;

  /// Constructs a [DioHttpService] with the provided Dio instance.
  const DioHttpService(this._dio);

  /// Performs a GET request using the provided [HttpRequestDTO].
  ///
  /// - Parameter [dto]: The data transfer object containing the details
  ///   required to perform the GET request.
  ///
  /// Returns a [Future] that completes with a [HttpResponseDTO] containing
  /// the response data.
  ///
  /// Throws a [GetHttpException] if the request fails.
  @override
  Future<HttpResponseDTO> get(HttpRequestDTO dto) async {
    try {
      final response = await _dio.get(
        dto.path,
        queryParameters: dto.queryParameters,
        options: Options(headers: dto.headers),
      );

      return HttpResponseDTO(body: response.data, statusCode: response.statusCode ?? 500);
    } on DioException catch (exception, stackTrace) {
      throw GetHttpException(
        message: exception.response?.data,
        statusCode: exception.response?.statusCode ?? 500,
        stackTrace: stackTrace,
      );
    }
  }

  /// Performs a POST request using the provided [HttpRequestDTO].
  ///
  /// - Parameter [dto]: The data transfer object containing the details
  ///   required to perform the POST request.
  ///
  /// Returns a [Future] that completes with a [HttpResponseDTO] containing
  /// the response data.
  ///
  /// Throws a [PostHttpException] if the request fails.
  @override
  Future<HttpResponseDTO> post(HttpRequestDTO dto) async {
    try {
      final response = await _dio.post(
        dto.path,
        data: dto.data,
        queryParameters: dto.queryParameters,
        options: Options(headers: dto.headers),
      );

      return HttpResponseDTO(body: response.data, statusCode: response.statusCode);
    } on DioException catch (exception, stackTrace) {
      throw PostHttpException(
        message: exception.response?.data,
        statusCode: exception.response?.statusCode ?? 500,
        stackTrace: stackTrace,
      );
    }
  }

  /// Performs a PUT request using the provided [HttpRequestDTO].
  ///
  /// - Parameter [dto]: The data transfer object containing the details
  ///   required to perform the PUT request.
  ///
  /// Returns a [Future] that completes with a [HttpResponseDTO] containing
  /// the response data.
  ///
  /// Throws a [PutHttpException] if the request fails.
  @override
  Future<HttpResponseDTO> put(HttpRequestDTO dto) async {
    try {
      final response = await _dio.put(
        dto.path,
        data: dto.data,
        queryParameters: dto.queryParameters,
        options: Options(headers: dto.headers),
      );

      return HttpResponseDTO(body: response.data, statusCode: response.statusCode);
    } on DioException catch (exception, stackTrace) {
      throw PutHttpException(
        message: exception.response?.data,
        statusCode: exception.response?.statusCode ?? 500,
        stackTrace: stackTrace,
      );
    }
  }

  /// Performs a PATCH request using the provided [HttpRequestDTO].
  ///
  /// - Parameter [dto]: The data transfer object containing the details
  ///   required to perform the PATCH request.
  ///
  /// Returns a [Future] that completes with a [HttpResponseDTO] containing
  /// the response data.
  ///
  /// Throws a [PatchHttpException] if the request fails.
  @override
  Future<HttpResponseDTO> patch(HttpRequestDTO dto) async {
    try {
      final response = await _dio.patch(
        dto.path,
        data: dto.data,
        queryParameters: dto.queryParameters,
        options: Options(headers: dto.headers),
      );

      return HttpResponseDTO(body: response.data, statusCode: response.statusCode);
    } on DioException catch (exception, stackTrace) {
      throw PatchHttpException(
        message: exception.response?.data,
        statusCode: exception.response?.statusCode ?? 500,
        stackTrace: stackTrace,
      );
    }
  }

  /// Performs a DELETE request using the provided [HttpRequestDTO].
  ///
  /// - Parameter [dto]: The data transfer object containing the details
  ///   required to perform the DELETE request.
  ///
  /// Returns a [Future] that completes with a [HttpResponseDTO] containing
  /// the response data.
  ///
  /// Throws a [DeleteHttpException] if the request fails.
  @override
  Future<HttpResponseDTO> delete(HttpRequestDTO dto) async {
    try {
      final response = await _dio.delete(
        dto.path,
        data: dto.data,
        queryParameters: dto.queryParameters,
        options: Options(headers: dto.headers),
      );

      return HttpResponseDTO(body: response.data, statusCode: response.statusCode);
    } on DioException catch (exception, stackTrace) {
      throw DeleteHttpException(
        message: exception.response?.data,
        statusCode: exception.response?.statusCode ?? 500,
        stackTrace: stackTrace,
      );
    }
  }
}
