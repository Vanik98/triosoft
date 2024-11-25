part of 'login_bloc.dart';

class LoginState {
  bool? isRegisteredUser;

 LoginState._({this.isRegisteredUser});

  factory LoginState.initial() =>LoginState._();

 LoginState copyWith({bool? isRegisteredUser}) {
    return LoginState._(
      isRegisteredUser: isRegisteredUser ?? this.isRegisteredUser,
    );
  }
}
