
import '../repository/authorization_repository.dart';

class PutUserTokenUseCase {
  AuthorizationRepository authorizationRepository;

  PutUserTokenUseCase(this.authorizationRepository);

  void execute(String token) {
    authorizationRepository.putToken(token);
  }
}
