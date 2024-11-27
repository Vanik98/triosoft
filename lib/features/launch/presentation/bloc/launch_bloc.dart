import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/features/authorization/domain/usecases/get_user_token_use_case.dart';

import 'launch_event.dart';

part 'launch_state.dart';

class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  final GetUserTokenUseCase _getUserTokenUseCase;

  LaunchBloc(this._getUserTokenUseCase) : super(LaunchState.initial()) {
    on<LaunchEventCheckIsRegisteredUserEvent>(_checkIsRegisteredUser);
  }

  void _checkIsRegisteredUser(LaunchEventCheckIsRegisteredUserEvent event, Emitter<LaunchState> emitter) {
    final token = _getUserTokenUseCase.execute();
    emitter(state.copyWith(token: token));
  }
}
