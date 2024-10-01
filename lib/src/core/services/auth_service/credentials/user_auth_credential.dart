/// Class responsible for transporting the credential data of an user
class UserAuthCredential {
  /// Id of authenticated user
  final String id;

  /// Attribute responsible for seeing if the user is anonymous or not
  final bool isAnonymous;

  /// Name of authenticated user
  final String? name;

  /// Email of authenticated user
  final String? email;

  /// Attribute responsible for seeing if the user's email is verified or not
  final bool isEmailVerified;

  /// Phone of authenticated user
  final String? phone;

  /// Attribute responsible for seeing if the user is new or not
  final bool isNewUser;

  /// Base constructor of UserAuthCredential
  const UserAuthCredential({
    required this.id,
    this.isAnonymous = true,
    this.name,
    this.email,
    this.isEmailVerified = false,
    this.phone,
    this.isNewUser = false,
  });
}
