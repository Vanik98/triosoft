import 'package:freezed_annotation/freezed_annotation.dart';



part 'profile_event.freezed.dart';

@freezed
sealed class ProfileEvent{
  const factory ProfileEvent.initial() =  ProfileEventInitialEvent;

  const factory ProfileEvent.getProfileInfo(String token) =  ProfileEventGetProfileinfoEvent;
}
