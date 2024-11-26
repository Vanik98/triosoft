import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_request.g.dart';

@JsonSerializable()
class AddUserRequest {
  String name;
  String lastName;
  String email;
  String phoneNumber;
  String region;
  String city;
  String school;
  String subject;
  String grade;
  String password;

  AddUserRequest({
    required this.name,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.region,
    required this.city,
    required this.school,
    required this.subject,
    required this.grade,
    required this.password,
  });

  factory AddUserRequest.fromJson(Map<String, dynamic> json) => _$AddUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddUserRequestToJson(this);
}
