abstract interface class AuthPreferences {
  void putToken(String token);

  String? getToken();

  void removeToken();
}
