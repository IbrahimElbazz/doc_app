import 'package:json_annotation/json_annotation.dart';
part 'request_register.g.dart';

@JsonSerializable()
class RequestRegister {
  final String name;
  final String email;
  final String phone;
  final int gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  RequestRegister(this.name, this.email, this.phone, this.gender, this.password,
      this.passwordConfirmation);

  Map<String, dynamic> toJson() => _$RequestRegisterToJson(this);
}
