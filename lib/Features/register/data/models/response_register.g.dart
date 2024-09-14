// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseRegister _$ResponseRegisterFromJson(Map<String, dynamic> json) =>
    ResponseRegister(
      json['message'] as String?,
      json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
      json['status'] as bool?,
      (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ResponseRegisterToJson(ResponseRegister instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userData,
      'status': instance.status,
      'code': instance.code,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      json['token'] as String?,
      json['username'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'token': instance.token,
      'username': instance.userName,
    };
