part of 'launch_bloc.dart';

class LaunchState {
  String? token;

  LaunchState._({this.token});

  factory LaunchState.initial() => LaunchState._();

  LaunchState copyWith({String? token}) {
    return LaunchState._(
      token: token ?? this.token,
    );
  }
}
