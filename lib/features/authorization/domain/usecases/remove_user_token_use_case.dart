import '../repository/authorization_repository.dart';

class RemoveUserTokenUseCase {
  AuthorizationRepository authorizationRepository;

  RemoveUserTokenUseCase(this.authorizationRepository);

  void execute() {
    authorizationRepository.removeToken();
  }
}
