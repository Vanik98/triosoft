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
}
