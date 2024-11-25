
import '../../../domain/repository/authorization_repository.dart';
import '../datasource/preferences/auth_preferences.dart';

class AuthorizationRepositoryImpl implements AuthorizationRepository {
  AuthPreferences authPreferences;

  AuthorizationRepositoryImpl(this.authPreferences);

  @override
  String? getToken() => authPreferences.getToken();

  @override
  void putToken(String token) => authPreferences.putToken(token);

  @override
  void removeToken() => authPreferences.removeToken();
}
