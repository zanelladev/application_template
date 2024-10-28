import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Factory class for creating instances of `FlutterSecureStorage`.
///
/// The `SecureStorageFactory` provides a method to create a pre-configured
/// instance of `FlutterSecureStorage` with specific options for iOS and Android.
class SecureStorageFactory {
  /// Creates a `FlutterSecureStorage` instance with specific options for iOS and Android.
  ///
  /// This method configures `FlutterSecureStorage` with:
  /// - iOS options that set the keychain accessibility to `first_unlock`.
  /// - Android options that enable encrypted shared preferences and specify
  ///   key and storage cipher algorithms.
  static FlutterSecureStorage create() {
    return const FlutterSecureStorage(
      iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
        keyCipherAlgorithm: KeyCipherAlgorithm.RSA_ECB_OAEPwithSHA_256andMGF1Padding,
        storageCipherAlgorithm: StorageCipherAlgorithm.AES_GCM_NoPadding,
      ),
    );
  }
}
