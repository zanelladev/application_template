import 'package:firebase_auth/firebase_auth.dart';

import '../user_auth_credential.dart';

/// A utility class for adapting Firebase [User] objects into
/// [UserAuthCredential] objects.
///
/// This adapter is responsible for converting the properties of a
/// Firebase [User] into a [UserAuthCredential], which is used
/// internally within the application for authentication purposes.
class UserAuthCredentialAdapter {
  /// Converts a Firebase [User] object into a [UserAuthCredential].
  ///
  /// The [fromFirebase] method extracts necessary information from the
  /// provided [user] and returns an instance of [UserAuthCredential]
  /// with the corresponding properties.
  ///
  /// - [user]: The Firebase [User] object to be adapted.
  ///
  /// Returns an instance of [UserAuthCredential] populated with the
  /// relevant data from the Firebase [User].
  static UserAuthCredential fromFirebase(User user) {
    return UserAuthCredential(
      id: user.uid,
      isAnonymous: user.isAnonymous,
      name: user.displayName,
      email: user.email,
      isEmailVerified: user.emailVerified,
      phone: user.phoneNumber,
    );
  }
}
