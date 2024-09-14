import 'package:json_annotation/json_annotation.dart';

part 'response_register.g.dart';

@JsonSerializable()
class ResponseRegister {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool? status;
  final int? code;

  ResponseRegister(this.message, this.userData, this.status, this.code);
  factory ResponseRegister.fromJson(Map<String, dynamic> json) =>
      _$ResponseRegisterFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: 'username')
  String? userName;

  UserData(this.token, this.userName);
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
