import 'package:shared_preferences/shared_preferences.dart';
import 'package:triosoft/features/authorization/data/model/datasource/preferences/auth_preferences.dart';
import 'package:triosoft/features/authorization/data/model/datasource/preferences/auth_preferences_impl.dart';
import 'package:triosoft/features/authorization/domain/repository/authorization_repository.dart';
import 'package:triosoft/features/authorization/domain/usecases/get_user_token.dart';
import 'package:triosoft/features/authorization/domain/usecases/put_user_token.dart';
import 'package:triosoft/features/authorization/domain/usecases/remove_user_token.dart';

import '../../../../di/dependency_injection.dart';
import '../../data/model/repository/authorization_repository_impl.dart';

Future<void> authorizationModule() async {
  //datasource
  locator.registerSingleton<AuthPreferences>(AuthPreferencesImpl(await SharedPreferences.getInstance()));

  //repo
  locator.registerSingleton<AuthorizationRepository>(AuthorizationRepositoryImpl(locator.get()));

  //usecases
  locator.registerSingleton(GetUserTokenUseCase(locator.get()));
  locator.registerSingleton(RemoveUserTokenUseCase(locator.get()));
  locator.registerSingleton(PutUserTokenUseCase(locator.get()));
}
