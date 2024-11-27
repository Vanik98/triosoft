// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddUserRequest _$AddUserRequestFromJson(Map<String, dynamic> json) =>
    AddUserRequest(
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      region: json['region'] as String,
      city: json['city'] as String,
      school: json['school'] as String,
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      grades:
          (json['grades'] as List<dynamic>?)?.map((e) => e as String).toList(),
      password: json['password'] as String,
    );

Map<String, dynamic> _$AddUserRequestToJson(AddUserRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'region': instance.region,
      'city': instance.city,
      'school': instance.school,
      'subjects': instance.subjects,
      'grades': instance.grades,
      'password': instance.password,
    };
