part of 'sign_up_bloc.dart';

class SignUpState {
  String? name;
  String? lastName;
  String? email;
  String? phoneNumber;
  String? region;
  String? city;
  String? school;
  List<String>? subjects;
  List<String>? grades;
  String? password;
  String? confirmPassword;

  SignUpState._({
    this.name,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.region,
    this.city,
    this.school,
    this.subjects,
    this.grades,
    this.password,
    this.confirmPassword,
  });

  factory SignUpState.initial() => SignUpState._();

  SignUpState copyWith({
    String? name,
    String? lastName,
    String? email,
    String? phoneNumber,
    String? region,
    String? city,
    String? school,
    List<String>? subjects,
    List<String>? grades,
    String? password,
    String? confirmPassword,
  }) {
    return SignUpState._(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      region: region ?? this.region,
      city: city ?? this.city,
      school: school ?? this.school,
      subjects: subjects ?? this.subjects,
      grades: grades ?? this.grades,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }
}
