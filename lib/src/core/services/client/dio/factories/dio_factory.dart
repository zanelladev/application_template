// ignore_for_file: avoid_redundant_argument_values
import 'package:dio/dio.dart';

import '../../constants/client_constants.dart';

class DioFactory {
  static Dio create() {
    return Dio(
      BaseOptions(
        baseUrl: ClientConstants.baseUrl,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
  }
}
