import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/core/base/utils/api/ui_state.dart';
import 'package:triosoft/features/authorization/domain/usecases/put_user_token_use_case.dart';
import 'package:triosoft/features/authorization/domain/usecases/register_user_use_case.dart';

import 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final PutUserTokenUseCase _putUserTokenUseCase;
  final RegisterUserUseCase _registerUserUseCase;

  LoginBloc(this._putUserTokenUseCase, this._registerUserUseCase) : super(LoginState.initial()) {
    on<LoginEventRegisterUserEvent>(_registerUser);
  }

  void _registerUser(LoginEventRegisterUserEvent event, Emitter<LoginState> emitter) async {
    emitter(state.copyWith(isShowDialog: true));
    final UiState<String?> result = await _registerUserUseCase.execute(event.addUserRequest);
    emitter(state.copyWith(isShowDialog: true));
    if (result is UiSuccess<String>) {
      _putUserTokenUseCase.execute(result.data!);
      emitter(state.copyWith(isLogged: true));
    } else {
      emitter(state.copyWith(isLogged: false));
    }
  }
}
