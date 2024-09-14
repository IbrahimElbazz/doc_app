import 'package:docdoc/Features/login/data/models/request_login.dart';
import 'package:docdoc/Features/login/data/repo/login_repo.dart';
import 'package:docdoc/Features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  // object repo

  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(RequestLogin(
      email: emailController.text,
      password: passwordController.text,
    ));

    response.when(
      success: (ResponseLogin) {
        emit(LoginState.success(ResponseLogin));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
      },
    );
  }
}
