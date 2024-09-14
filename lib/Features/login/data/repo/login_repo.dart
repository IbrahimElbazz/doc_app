import 'package:docdoc/Core/Networking/api_error_handler.dart';
import 'package:docdoc/Core/Networking/api_result.dart';
import 'package:docdoc/Core/Networking/api_service.dart';
import 'package:docdoc/Features/login/data/models/request_login.dart';
import 'package:docdoc/Features/login/data/models/response_login.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<ResponseLogin>> login(RequestLogin requestLogin) async {
    try {
      final response = await _apiService.login(requestLogin);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
