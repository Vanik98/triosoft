import 'package:triosoft/features/authorization/data/model/request/add_user_request.dart';

import '../../../../core/base/utils/api/ui_state.dart';
import '../../domain/repository/authorization_repository.dart';
import '../datasource/api/auth_api_service.dart';
import '../datasource/preferences/auth_preferences.dart';

class AuthorizationRepositoryImpl implements AuthorizationRepository {
  AuthPreferences authPreferences;
  AuthApiService authApiService;

  AuthorizationRepositoryImpl(this.authPreferences, this.authApiService);

  @override
  String? getToken() => authPreferences.getToken();

  @override
  void putToken(String token) => authPreferences.putToken(token);

  @override
  void removeToken() => authPreferences.removeToken();

  @override
  Future<UiState<String?>> registerUser(AddUserRequest addUserRequest) async {
    final result = await authApiService.registerUser(addUserRequest);
    // parse
    // la la la la la la la la la la la la
    //return UisTATE
    return UiSuccess(result);
  }
}
