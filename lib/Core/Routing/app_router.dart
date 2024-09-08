import 'package:docdoc/Core/Routing/routes.dart';
import 'package:docdoc/Features/login/login.dart';
import 'package:docdoc/Features/onBoarding/onBoadrding.dart';

import 'package:docdoc/Features/registration/register.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final Argument = settings.arguments;
    switch (settings.name) {
      case Routes.doc_app:
        return MaterialPageRoute(
            builder: (context) => DocApp(
                  appRouter: AppRouter(),
                ));

      case Routes.OnBoadrding:
        return MaterialPageRoute(
          builder: (context) => const OnBoadrding(),
        );

      case Routes.login:
      return MaterialPageRoute(
        builder: (context) =>  LogInScreen(),
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
