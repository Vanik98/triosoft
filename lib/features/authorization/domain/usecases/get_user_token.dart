
import '../repository/authorization_repository.dart';

class GetUserTokenUseCase {
  AuthorizationRepository authorizationRepository;

  GetUserTokenUseCase(this.authorizationRepository);

  String? execute() {
    return authorizationRepository.getToken();
  }
}
