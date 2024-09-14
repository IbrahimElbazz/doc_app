import 'package:dio/dio.dart';
import 'package:docdoc/Core/Networking/api_service.dart';
import 'package:docdoc/Core/Networking/dio_factory.dart';
import 'package:docdoc/Features/login/data/repo/login_repo.dart';
import 'package:docdoc/Features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/Features/register/data/repo/register_repo.dart';
import 'package:docdoc/Features/register/logic/cubit/register_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //register
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
}
