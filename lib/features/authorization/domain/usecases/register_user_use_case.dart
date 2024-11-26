import 'package:triosoft/core/base/utils/api/ui_state.dart';
import 'package:triosoft/features/authorization/data/model/request/add_user_request.dart';

import '../repository/authorization_repository.dart';

class RegisterUserUseCase {
  AuthorizationRepository authorizationRepository;

  RegisterUserUseCase(this.authorizationRepository);

  Future<UiState<String?>> execute(AddUserRequest addUserRequest) => authorizationRepository.registerUser(addUserRequest);
}
