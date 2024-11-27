part of 'login_bloc.dart';

class LoginState {
  String? token;
  bool? isShowDialog;
  bool? isShowError;
  bool? needToLogOut;

  LoginState._({this.token, this.isShowDialog, this.isShowError, this.needToLogOut});

  factory LoginState.initial() => LoginState._();

  LoginState copyWith({String? token, bool? isShowDialog, bool? isShowError, bool? needToLogOut}) {
    return LoginState._(
      isShowDialog: isShowDialog ?? this.isShowDialog,
      token: needToLogOut == true ? null : (token ?? this.token),
      isShowError: isShowError ?? this.isShowError,
      needToLogOut: needToLogOut ?? this.needToLogOut,
    );
  }
}
