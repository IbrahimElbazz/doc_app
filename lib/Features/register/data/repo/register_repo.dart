import 'package:docdoc/Core/Networking/api_error_handler.dart';
import 'package:docdoc/Core/Networking/api_result.dart';
import 'package:docdoc/Core/Networking/api_service.dart';
import 'package:docdoc/Features/register/data/models/request_register.dart';
import 'package:docdoc/Features/register/data/models/response_register.dart';

class RegisterRepo {
  final ApiService _apiService;

  RegisterRepo(this._apiService);

  Future<ApiResult<ResponseRegister>> register(
      RequestRegister requestRegister) async {
    try {
      final response = await _apiService.register(requestRegister);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
