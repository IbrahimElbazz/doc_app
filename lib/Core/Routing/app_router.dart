import 'package:docdoc/Core/Routing/routes.dart';
import 'package:docdoc/Features/login/ui/screen/login.dart';
import 'package:docdoc/Features/main/screens/mainpage.dart';

import 'package:docdoc/Features/onBoarding/ui/screen/onBoadrding.dart';
import 'package:docdoc/Features/registration/ui/screen/register.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final Argument = settings.arguments;

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
          builder: (context) => const LogInScreen(),
        );

      case Routes.register:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
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
