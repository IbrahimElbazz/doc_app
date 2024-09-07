import 'package:docdoc/Core/Routing/routes.dart';
import 'package:docdoc/Features/Home/home_screen.dart';
import 'package:docdoc/Features/registration/register.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.doc_app:
        return MaterialPageRoute(
            builder: (context) => DocApp(
                  appRouter: AppRouter(),
                ));
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const Home(),
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
