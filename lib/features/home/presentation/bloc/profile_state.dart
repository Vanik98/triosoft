part of 'profile_bloc.dart';

class ProfileState {
  bool? fullName;

  ProfileState._({this.fullName});

  factory ProfileState.initial() => ProfileState._();

  ProfileState copyWith({bool? fullName}) {
    return ProfileState._(
      fullName: fullName ?? this.fullName,
    );
  }
}
