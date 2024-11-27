import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triosoft/features/authorization/data/model/request/add_user_request.dart';

part 'login_event.freezed.dart';

@freezed
sealed class LoginEvent {
  const factory LoginEvent.initial() = LoginEventInitialEvent;

  const factory LoginEvent.registerUser(AddUserRequest addUserRequest) = LoginEventRegisterUserEvent;

  const factory LoginEvent.logOutUser() = LoginEventLogOutEvent;

  const factory LoginEvent.getToken() = LoginEventGetTokenEvent;
}
