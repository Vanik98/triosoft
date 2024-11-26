import 'package:triosoft/features/authorization/data/model/request/add_user_request.dart';

import '../../../../core/base/utils/api/ui_state.dart';

abstract interface class AuthorizationRepository {
  Future<UiState<String?>> registerUser(AddUserRequest addUserRequest);

  void putToken(String token);

  String? getToken();

  void removeToken();
}
