import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/features/authorization/domain/usecases/get_user_token_use_case.dart';

import 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetUserTokenUseCase _getUserTokenUseCase;

  ProfileBloc(this._getUserTokenUseCase) : super(ProfileState.initial()) {
    on<ProfileEventGetProfileinfoEvent>(_getProfileInfo);
  }

  void _getProfileInfo(ProfileEventGetProfileinfoEvent event, Emitter<ProfileState> emitter) {

  }
}
