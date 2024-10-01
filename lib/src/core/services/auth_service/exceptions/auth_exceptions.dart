import '../../../errors/app_error.dart';

class GetCurrentUserAuthException extends AppException {
  GetCurrentUserAuthException({
    required super.message,
    required super.stackTrace,
  }) : super(code: 'get_current_user_auth');
}

class SignOutAuthException extends AppException {
  SignOutAuthException({
    required super.message,
    required super.stackTrace,
  }) : super(code: 'sign_out_auth');
}
