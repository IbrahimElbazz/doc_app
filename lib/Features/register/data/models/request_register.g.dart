// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestRegister _$RequestRegisterFromJson(Map<String, dynamic> json) =>
    RequestRegister(
      json['name'] as String,
      json['email'] as String,
      json['phone'] as String,
      (json['gender'] as num).toInt(),
      json['password'] as String,
      json['password_confirmation'] as String,
    );

Map<String, dynamic> _$RequestRegisterToJson(RequestRegister instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
