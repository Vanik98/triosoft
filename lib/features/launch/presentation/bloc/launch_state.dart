part of 'launch_bloc.dart';

class LaunchState {
  bool? isRegisteredUser;

  LaunchState._({this.isRegisteredUser});

  factory LaunchState.initial() => LaunchState._();

  LaunchState copyWith({bool? isRegisteredUser}) {
    return LaunchState._(
      isRegisteredUser: isRegisteredUser ?? this.isRegisteredUser,
    );
  }
}
