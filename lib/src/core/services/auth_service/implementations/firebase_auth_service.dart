import 'package:firebase_auth/firebase_auth.dart';

import '../credentials/adapters/user_auth_credential_adapter.dart';
import '../credentials/user_auth_credential.dart';
import '../exceptions/auth_exceptions.dart';
import '../i_auth_service.dart';

/// A service class that handles authentication operations using Firebase.
class FirebaseAuthService implements IAuthService {
  final FirebaseAuth _auth;

  /// Constructs an instance of [FirebaseAuthService] with the provided [FirebaseAuth] instance.
  ///
  /// - Parameter auth: An instance of [FirebaseAuth] used to perform authentication operations.
  const FirebaseAuthService(this._auth);

  /// Retrieves the currently authenticated user.
  ///
  /// This method fetches the current user from Firebase Authentication and adapts it into a [UserAuthCredential] object.
  ///
  /// - Returns: A [UserAuthCredential] representing the currently authenticated user, or `null` if no user is authenticated.
  /// - Throws: [GetCurrentUserAuthException] if an error occurs while fetching the current user.
  @override
  UserAuthCredential? getCurrentUser() {
    try {
      final firebaseUser = _auth.currentUser;

      if (firebaseUser == null) return null;

      return UserAuthCredentialAdapter.fromFirebase(firebaseUser);
    } on FirebaseAuthMultiFactorException catch (error, stackTrace) {
      throw GetCurrentUserAuthException(
        message: error.message ?? '',
        stackTrace: stackTrace,
      );
    }
  }

  /// Signs out the currently authenticated user.
  ///
  /// This method signs out the current user from Firebase Authentication.
  ///
  /// - Throws: [SignOutAuthException] if an error occurs during the sign-out process.
  @override
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (error, stackTrace) {
      throw SignOutAuthException(
        message: error.message ?? '',
        stackTrace: stackTrace,
      );
    }
  }
}
