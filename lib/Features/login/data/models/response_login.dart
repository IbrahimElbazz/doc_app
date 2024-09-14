import 'package:json_annotation/json_annotation.dart';

part 'response_login.g.dart';

@JsonSerializable()
class ResponseLogin {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool? status;
  final int? code;

  ResponseLogin(this.message, this.userData, this.status, this.code);
  factory ResponseLogin.fromJson(Map<String, dynamic> json) =>
      _$ResponseLoginFromJson(json);
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
