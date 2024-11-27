import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState.initial()) {
    on<SignUpChangeNameEvent>(_changeName);
    on<SignUpChangeLastNameEvent>(_changeLastName);
    on<SignUpChangeEmailEvent>(_changeEmail);
    on<SignUpChangePhoneNumberEvent>(_changePhoneNumber);
    on<SignUpChangeRegionEvent>(_changeRegion);
    on<SignUpChangeCityEvent>(_changeCity);
    on<SignUpChangeSchoolEvent>(_changeSchool);
    on<SignUpChangeSubjectEvent>(_changeSubject);
    on<SignUpChangeGradeEvent>(_changeGrade);
    on<SignUpChangePasswordEvent>(_changePassword);
    on<SignUpChangeConfirmPasswordEvent>(_changeConfirmPassword);
  }

  void _changeName(SignUpChangeNameEvent event, Emitter<SignUpState> emitter) async {
    emitter(state.copyWith(name: event.name));
  }

  void _changeLastName(SignUpChangeLastNameEvent event, Emitter<SignUpState> emitter) async {
    emitter(state.copyWith(lastName: event.lastName));
  }

  void _changeEmail(SignUpChangeEmailEvent event, Emitter<SignUpState> emitter) async {
    emitter(state.copyWith(email: event.email));
  }

  void _changePhoneNumber(SignUpChangePhoneNumberEvent event, Emitter<SignUpState> emitter) async {
    emitter(state.copyWith(phoneNumber: event.phoneNumber));
  }

  void _changeRegion(SignUpChangeRegionEvent event, Emitter<SignUpState> emitter) async {
    emitter(state.copyWith(region: event.region));
  }

  void _changeCity(SignUpChangeCityEvent event, Emitter<SignUpState> emitter) async {
    emitter(state.copyWith(city: event.city));
  }

  void _changeSchool(SignUpChangeSchoolEvent event, Emitter<SignUpState> emitter) async {
    emitter(state.copyWith(school: event.school));
  }

  void _changeSubject(SignUpChangeSubjectEvent event, Emitter<SignUpState> emitter) async {
    emitter(state.copyWith(subjects: event.subjects));
  }

  void _changeGrade(SignUpChangeGradeEvent event, Emitter<SignUpState> emitter) async {
    emitter(state.copyWith(grades: event.grade));
  }

  void _changePassword(SignUpChangePasswordEvent event, Emitter<SignUpState> emitter) async {
    emitter(state.copyWith(password: event.password));
  }

  void _changeConfirmPassword(SignUpChangeConfirmPasswordEvent event, Emitter<SignUpState> emitter) async {
    emitter(state.copyWith(confirmPassword: event.confirmPassword));
  }
}
