part of 'login_bloc.dart';

class LoginState {
  String? token;
  bool? isShowDialog;
  bool? isShowError;

  LoginState._({this.token, this.isShowDialog,this.isShowError});

  factory LoginState.initial() => LoginState._();

  LoginState copyWith({String? token, bool? isShowDialog,bool? isShowError}) {
    return LoginState._(
      isShowDialog: isShowDialog ?? this.isShowDialog,
      token: token ?? this.token,
      isShowError: isShowError ?? this.isShowError,
    );
  }
}
