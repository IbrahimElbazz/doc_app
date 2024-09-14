import 'package:dio/dio.dart';
import 'package:docdoc/Core/Networking/api_constants.dart';
import 'package:docdoc/Features/login/data/models/request_login.dart';
import 'package:docdoc/Features/login/data/models/response_login.dart';
import 'package:docdoc/Features/register/data/models/request_register.dart';
import 'package:docdoc/Features/register/data/models/response_register.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<ResponseLogin> login(
    @Body() RequestLogin loginRequestBody,
  );

  @POST(ApiConstants.register)
  Future<ResponseRegister> register(
    @Body() RequestRegister requestRegister,
  );
}
