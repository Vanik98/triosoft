// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:triosoft/features/authorization/domain/usecases/get_user_token.dart';
//
// import 'form_search_event.dart';
//
// part 'form_search_state.dart';
//
// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   final GetUserTokenUseCase _getUserTokenUseCase;
//
//   LoginBloc(this._getUserTokenUseCase) : super(LoginState.initial()) {
//     on<LoginEventCheckIsRegisteredUserEvent>(_checkIsRegisteredUser);
//   }
//
//   void _checkIsRegisteredUser(LoginEventCheckIsRegisteredUserEvent event, Emitter<LoginState> emitter) {
//     final token = _getUserTokenUseCase.execute();
//     emitter(state.copyWith(isRegisteredUser: token != null));
//   }
// }
