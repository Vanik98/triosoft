part of 'login_bloc.dart';

class LoginState {
  bool? isLogged;
  bool? isShowDialog;

 LoginState._({this.isLogged,this.isShowDialog});

  factory LoginState.initial() =>LoginState._();

 LoginState copyWith({bool? isLogged,bool? isShowDialog}) {
    return LoginState._(
      isShowDialog: isShowDialog ?? this.isShowDialog,
      isLogged: isLogged ?? this.isLogged,
    );
  }
}
