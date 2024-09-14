import 'package:docdoc/Core/Routing/app_router.dart';
import 'package:docdoc/Core/classprovider/pagesroutes.dart';
import 'package:docdoc/Core/di/dependency_injection.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ChangePages(),
      )
    ],
    child: DocApp(
      appRouter: AppRouter(),
    ),
  ));
}
