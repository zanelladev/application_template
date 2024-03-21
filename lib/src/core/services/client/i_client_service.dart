import 'dtos/client_request_dto.dart';
import 'dtos/client_response_dto.dart';

abstract interface class IClientService {
  Future<ClientResponseDTO> get(ClientRequestDTO clientRequestDTO);
  Future<ClientResponseDTO> post(ClientRequestDTO clientRequestDTO);
  Future<ClientResponseDTO> put(ClientRequestDTO clientRequestDTO);
  Future<ClientResponseDTO> delete(ClientRequestDTO clientRequestDTO);
}
