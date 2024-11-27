part of 'profile_bloc.dart';

class ProfileState {
  String? fullName;

  ProfileState._({this.fullName});

  factory ProfileState.initial() => ProfileState._();

  ProfileState copyWith({String? fullName}) {
    return ProfileState._(
      fullName: fullName ?? this.fullName,
    );
  }
}
