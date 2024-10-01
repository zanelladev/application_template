import 'package:firebase_remote_config/firebase_remote_config.dart';

///Class to initialize Firebase RemoteConfig
class FirebaseRemoteConfigHandler {
  final FirebaseRemoteConfig remoteConfig;

  const FirebaseRemoteConfigHandler(this.remoteConfig);

  ///Singleton instance of [FirebaseRemoteConfigHandler].
  static final FirebaseRemoteConfigHandler _instance = FirebaseRemoteConfigHandler(FirebaseRemoteConfig.instance);

  ///Provides access to the singleton instance of the service locator.
  static FirebaseRemoteConfigHandler get instance => _instance;

  ///Method responsible to initialize [FirebaseRemoteConfigHandler]
  Future<void> init() async {
    await remoteConfig.setConfigSettings(_defaultConfig);
    await remoteConfig.fetchAndActivate();
  }

  ///Default configuration of [FirebaseRemoteConfig]
  RemoteConfigSettings get _defaultConfig {
    return RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 1),
    );
  }
}
