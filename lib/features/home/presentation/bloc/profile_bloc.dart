import 'package:flutter_bloc/flutter_bloc.dart';

import 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<ProfileEventGetProfileinfoEvent>(_getProfileInfo);
  }

  void _getProfileInfo(ProfileEventGetProfileinfoEvent event, Emitter<ProfileState> emitter) {
    // use real use case -> repo -> api ..

    // for imitation
    emitter(state.copyWith(fullName: event.token));
  }
}
