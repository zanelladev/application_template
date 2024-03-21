import 'package:get_it/get_it.dart';

class Injector {
  static T retrive<T extends Object>() {
    return GetIt.instance.get<T>();
  }

  static void registerSingleton<T extends Object>(T instance) {
    GetIt.instance.registerSingleton<T>(instance);
  }

  static void registerLazySingleton<T extends Object>(T instance) {
    GetIt.instance.registerLazySingleton<T>(() => instance);
  }

  static void registerFactory<T extends Object>(T instance) {
    GetIt.instance.registerFactory<T>(() => instance);
  }
}
