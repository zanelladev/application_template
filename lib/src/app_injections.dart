import 'package:shared_preferences/shared_preferences.dart';

import 'core/services/client/dio/dio_client_service.dart';
import 'core/services/client/dio/factories/dio_factory.dart';
import 'core/services/client/i_client_service.dart';
import 'core/services/injector/injector.dart';
import 'core/services/storage/i_storage_service.dart';
import 'core/services/storage/shared/shared_preference_storage_service.dart';
import 'modules/splash/presenter/controller/splash_controller.dart';

class AppInjections {
  static Future<void> registerBinds() async {
    Injector.registerLazySingleton<IClientService>(
      DioClientService(
        dio: DioFactory.create(),
      ),
    );
    Injector.registerLazySingleton<IStorageService>(
      SharedPreferencesStorageService(
        await SharedPreferences.getInstance(),
      ),
    );
    Injector.registerFactory<SplashController>(
      const SplashController(),
    );
  }
}
