import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/core/base/utils/api/ui_state.dart';
import 'package:triosoft/features/authorization/domain/usecases/get_user_token_use_case.dart';
import 'package:triosoft/features/authorization/domain/usecases/put_user_token_use_case.dart';
import 'package:triosoft/features/authorization/domain/usecases/register_user_use_case.dart';
import 'package:triosoft/features/authorization/domain/usecases/remove_user_token_use_case.dart';

import 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final PutUserTokenUseCase _putUserTokenUseCase;
  final RemoveUserTokenUseCase _removeUserTokenUseCase;
  final RegisterUserUseCase _registerUserUseCase;
  final GetUserTokenUseCase _getUserTokenUseCase;

  LoginBloc(this._putUserTokenUseCase, this._removeUserTokenUseCase, this._registerUserUseCase, this._getUserTokenUseCase) : super(LoginState.initial()) {
    on<LoginEventRegisterUserEvent>(_registerUser);
    on<LoginEventLogOutEvent>(_logOutUser);
    on<LoginEventGetTokenEvent>(_getToken);
  }

  void _registerUser(LoginEventRegisterUserEvent event, Emitter<LoginState> emitter) async {
    emitter(state.copyWith(isShowDialog: true));
    final UiState<String?> result = await _registerUserUseCase.execute(event.addUserRequest);
    emitter(state.copyWith(isShowDialog: false));
    if (result is UiSuccess<String?>) {
      if (result.data != null) {
        _putUserTokenUseCase.execute(result.data!);
        emitter(state.copyWith(token: result.data!));
      } else {
        emitter(state.copyWith(isShowError: true));
      }
    } else {
      emitter(state.copyWith(isShowError: true));
    }
  }

  void _logOutUser(LoginEventLogOutEvent event, Emitter<LoginState> emitter) async {
    _removeUserTokenUseCase.execute();
    emitter(state.copyWith(needToLogOut: true));
  }

  void _getToken(LoginEventGetTokenEvent event, Emitter<LoginState> emitter) async {
    final token = _getUserTokenUseCase.execute();
    emitter(state.copyWith(token: token));
  }
}
