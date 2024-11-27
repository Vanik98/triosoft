import 'package:get_it/get_it.dart';

import '../features/authorization/presentation/di/authorization_di.dart';

final GetIt locator = GetIt.instance;

abstract class DependencyInjection {
  static void configure() {
    authorizationModule();
  }
}
