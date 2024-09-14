import 'package:docdoc/Core/Routing/routes.dart';
import 'package:docdoc/Core/di/dependency_injection.dart';
import 'package:docdoc/Features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/Features/login/ui/screen/login.dart';
import 'package:docdoc/Features/main/screens/mainpage.dart';
import 'package:docdoc/Features/onBoarding/ui/screen/onBoadrding.dart';
import 'package:docdoc/Features/register/logic/cubit/register_cubit.dart';
import 'package:docdoc/Features/register/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //final Argument = settings.arguments;

    switch (settings.name) {
      case Routes.OnBoadrding:
        return MaterialPageRoute(
          builder: (context) => const OnBoadrding(),
        );
      case Routes.main:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LogInScreen(),
          ),
        );

      case Routes.register:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterPage(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('Route not found'),
            ),
          ),
        );
    }
  }
}
