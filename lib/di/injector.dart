import 'package:firstpoc/NetworkManager/api_services.dart';
import 'package:get_it/get_it.dart';

import '../Utils/app_shared_pref.dart';

class AppInjector {
  static final getIt = GetIt.instance;

  void setup() {
    _register(APIServices());
    _register<SharedPref>(AppSharedPref());
  }

  void _register<T extends Object>(T instance) {
    if (!getIt.isRegistered(instance: instance)) {
      getIt.registerSingleton<T>(instance);
    }
  }
}