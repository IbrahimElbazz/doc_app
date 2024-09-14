import 'package:docdoc/Features/register/data/models/request_register.dart';
import 'package:docdoc/Features/register/data/repo/register_repo.dart';
import 'package:docdoc/Features/register/logic/cubit/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitRegisterStates() async {
    emit(const RegisterState.loading());
    final response = await _registerRepo.register(RequestRegister(
      nameController.text,
      emailController.text,
      phoneController.text,
      0,
      passwordController.text,
      confirmPasswordController.text,
    ));
    response.when(success: (ResponseRegister) {
      emit(RegisterState.success(ResponseRegister));
    }, failure: (error) {
      emit(RegisterState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}
