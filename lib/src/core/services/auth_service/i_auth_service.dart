import 'dart:async';

import 'credentials/user_auth_credential.dart';

/// An abstract interface defining the contract for authentication services.
///
/// Implementations of this interface provide the core functionalities required for user authentication,
/// such as retrieving the current user and signing out.
abstract interface class IAuthService {
  /// Retrieves the currently authenticated user.
  ///
  /// This method fetches the current user credentials, encapsulated within a [UserAuthCredential] object.
  /// If no user is authenticated, it returns `null`.
  ///
  /// - Returns: A [FutureOr] that completes with a [UserAuthCredential] object representing the current user,
  /// or `null` if no user is authenticated.
  FutureOr<UserAuthCredential?> getCurrentUser();

  /// Signs out the currently authenticated user.
  ///
  /// This method performs the necessary operations to sign out the user from the authentication service.
  ///
  /// - Returns: A [Future] that completes when the sign-out operation is finished.
  Future<void> signOut();
}
