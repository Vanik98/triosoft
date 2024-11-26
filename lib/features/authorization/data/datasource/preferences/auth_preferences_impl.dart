import 'package:shared_preferences/shared_preferences.dart';

import 'auth_preferences.dart';

class AuthPreferencesImpl implements AuthPreferences {
  static const String prefKeyAuth = "pref_key_token";

  final SharedPreferences _sharedPreferences;

  AuthPreferencesImpl(this._sharedPreferences);

  @override
  String? getToken() {
    return _sharedPreferences.getString(prefKeyAuth);
  }

  @override
  void putToken(String token) {
    _sharedPreferences.setString(prefKeyAuth, token);
  }

  @override
  void removeToken() {
    _sharedPreferences.remove(prefKeyAuth);
  }
}
