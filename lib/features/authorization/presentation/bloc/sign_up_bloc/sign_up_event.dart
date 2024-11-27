import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.freezed.dart';

@freezed
sealed class SignUpEvent {
  const factory SignUpEvent.initial() = SignUpInitialEvent;

  const factory SignUpEvent.changeName(String? name) = SignUpChangeNameEvent;

  const factory SignUpEvent.changeLastName(String? lastName) = SignUpChangeLastNameEvent;

  const factory SignUpEvent.changeEmail(String? email) = SignUpChangeEmailEvent;

  const factory SignUpEvent.changePhoneNumber(String? phoneNumber) = SignUpChangePhoneNumberEvent;

  const factory SignUpEvent.changeRegion(String? region) = SignUpChangeRegionEvent;

  const factory SignUpEvent.changeCity(String? city) = SignUpChangeCityEvent;

  const factory SignUpEvent.changeSchool(String? school) = SignUpChangeSchoolEvent;

  const factory SignUpEvent.changeSubject(List<String>? subjects) = SignUpChangeSubjectEvent;

  const factory SignUpEvent.changeGrade(List<String>? grade) = SignUpChangeGradeEvent;

  const factory SignUpEvent.changePassword(String? password) = SignUpChangePasswordEvent;

  const factory SignUpEvent.changeConfirmPassword(String? confirmPassword) = SignUpChangeConfirmPasswordEvent;
}
