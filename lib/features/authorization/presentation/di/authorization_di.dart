import 'package:shared_preferences/shared_preferences.dart';
import 'package:triosoft/features/authorization/data/datasource/api/auth_api_service.dart';
import 'package:triosoft/features/authorization/domain/repository/authorization_repository.dart';
import 'package:triosoft/features/authorization/domain/usecases/get_user_token_use_case.dart';
import 'package:triosoft/features/authorization/domain/usecases/put_user_token_use_case.dart';
import 'package:triosoft/features/authorization/domain/usecases/register_user_use_case.dart';
import 'package:triosoft/features/authorization/domain/usecases/remove_user_token_use_case.dart';

import '../../../../di/dependency_injection.dart';
import '../../data/datasource/preferences/auth_preferences.dart';
import '../../data/datasource/preferences/auth_preferences_impl.dart';
import '../../data/repository/authorization_repository_impl.dart';

Future<void> authorizationModule() async {
  //datasource
  locator.registerSingleton<AuthPreferences>(AuthPreferencesImpl(await SharedPreferences.getInstance()));
  locator.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  //repo
  locator.registerSingleton<AuthorizationRepository>(AuthorizationRepositoryImpl(locator.get(), locator.get()));

  //usecases
  locator.registerSingleton(RegisterUserUseCase(locator.get()));
  locator.registerSingleton(GetUserTokenUseCase(locator.get()));
  locator.registerSingleton(RemoveUserTokenUseCase(locator.get()));
  locator.registerSingleton(PutUserTokenUseCase(locator.get()));
}
