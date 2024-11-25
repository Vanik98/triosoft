abstract interface class AuthorizationRepository {
  void putToken(String token);

  String? getToken();

  void removeToken();
}
