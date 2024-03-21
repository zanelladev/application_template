import 'package:dio/dio.dart';

import '../constants/client_constants.dart';
import '../dtos/client_request_dto.dart';
import '../dtos/client_response_dto.dart';
import '../exceptions/client_exception.dart';
import '../i_client_service.dart';

class DioClientService implements IClientService {
  final Dio dio;

  const DioClientService({
    required this.dio,
  });

  @override
  Future<ClientResponseDTO> delete(ClientRequestDTO clientRequestDTO) async {
    try {
      final response = await dio.delete(
        clientRequestDTO.path,
        data: clientRequestDTO.data,
        queryParameters: clientRequestDTO.headers,
        options: Options(
          headers: clientRequestDTO.headers,
        ),
      );

      return ClientResponseDTO(
        statusCode: response.statusCode!,
        body: response.data,
      );
    } on DioException catch (e, st) {
      throw ClientException(
        message: e.message ?? ClientConstants.defaultErrorMessage,
        stackTrace: st,
        statusCode: e.response?.statusCode ?? 0,
      );
    }
  }

  @override
  Future<ClientResponseDTO> get(ClientRequestDTO clientRequestDTO) async {
    try {
      final response = await dio.get(
        clientRequestDTO.path,
        data: clientRequestDTO.data,
        queryParameters: clientRequestDTO.headers,
        options: Options(
          headers: clientRequestDTO.headers,
        ),
      );

      return ClientResponseDTO(
        statusCode: response.statusCode!,
        body: response.data,
      );
    } on DioException catch (e, st) {
      throw ClientException(
        message: e.message ?? ClientConstants.defaultErrorMessage,
        stackTrace: st,
        statusCode: e.response?.statusCode ?? 0,
      );
    }
  }

  @override
  Future<ClientResponseDTO> post(ClientRequestDTO clientRequestDTO) async {
    try {
      final response = await dio.post(
        clientRequestDTO.path,
        data: clientRequestDTO.data,
        queryParameters: clientRequestDTO.headers,
        options: Options(
          headers: clientRequestDTO.headers,
        ),
      );

      return ClientResponseDTO(
        statusCode: response.statusCode!,
        body: response.data,
      );
    } on DioException catch (e, st) {
      throw ClientException(
        message: e.message ?? ClientConstants.defaultErrorMessage,
        stackTrace: st,
        statusCode: e.response?.statusCode ?? 0,
      );
    }
  }

  @override
  Future<ClientResponseDTO> put(ClientRequestDTO clientRequestDTO) async {
    try {
      final response = await dio.put(
        clientRequestDTO.path,
        data: clientRequestDTO.data,
        queryParameters: clientRequestDTO.headers,
        options: Options(
          headers: clientRequestDTO.headers,
        ),
      );

      return ClientResponseDTO(
        statusCode: response.statusCode!,
        body: response.data,
      );
    } on DioException catch (e, st) {
      throw ClientException(
        message: e.message ?? ClientConstants.defaultErrorMessage,
        stackTrace: st,
        statusCode: e.response?.statusCode ?? 0,
      );
    }
  }
}
