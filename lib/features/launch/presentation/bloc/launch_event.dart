import 'package:freezed_annotation/freezed_annotation.dart';



part 'launch_event.freezed.dart';

@freezed
sealed class LaunchEvent{
  const factory LaunchEvent.checkIsRegisteredUser() =  LaunchEventCheckIsRegisteredUserEvent;
}
