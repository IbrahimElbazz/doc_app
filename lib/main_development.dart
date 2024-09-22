import 'package:docdoc/Core/Routing/app_router.dart';
import 'package:docdoc/Core/classprovider/pagesroutes.dart';
import 'package:docdoc/Core/di/dependency_injection.dart';
import 'package:docdoc/Core/helpers/constants.dart';
import 'package:docdoc/Core/helpers/extentions.dart';
import 'package:docdoc/Core/helpers/shared_pref_helper.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  setupGetIt();
  await chekIfLoggedIn();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ChangePages(),
        )
      ],
      child: DocApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}

chekIfLoggedIn() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
