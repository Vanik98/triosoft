import 'package:shared_preferences/shared_preferences.dart';

Future<void> homeModule() async {
  // //datasource
  // locator.registerSingleton<NotificationsPreferences>(NotificationsPreferencesImpl(await SharedPreferences.getInstance()));
  //
  // //repo
  // locator.registerSingleton<NotificationsRepository>(NotificationsRepositoryImpl(locator.get()));
  //
  // //usecases
  // locator.registerSingleton(GetNotificationsUseCase(locator.get()));
  // locator.registerSingleton(DeleteNotificationsUseCase(locator.get()));
  // locator.registerSingleton(PutNotificationsUseCase(locator.get()));
}
