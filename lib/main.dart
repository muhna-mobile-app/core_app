import 'package:common_dependencies/common_dependencies.dart';
import 'package:core_app/src/helpers/navigator_global.dart';
import 'package:core_app/src/helpers/types.dart';

import 'package:core_app/src/contracts/micro_app_contract.dart';
import 'package:mfa_authentication/mfa_authentication.dart';
import 'package:mfa_home/mfa_home.dart';
import 'package:mfa_profile/mfa_profile.dart';

import '../src/contracts/base_app_contract.dart';
import 'package:flutter/material.dart';

void main() {
  GetIt getIt = GetIt.instance;
  Inject.init(getIt);
  ProfileInjection.init(getIt);
  runApp(MainApp());
}

class MainApp extends StatelessWidget with BaseApp {
  MainApp({super.key}) {
    super.registerRouters();
    super.initializeMicroApps();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MuHNA App',
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xFF6B3F4C, <int, Color>{
          50: Color(0xFF6B3F4C),
          100: Color(0xFF6B3F4C),
          200: Color(0xFF6B3F4C),
          300: Color(0xFF6B3F4C),
          400: Color(0xFF6B3F4C),
          500: Color(0xFF6B3F4C),
          600: Color(0xFF6B3F4C),
          700: Color(0xFF6B3F4C),
          800: Color(0xFF6B3F4C),
          900: Color(0xFF6B3F4C),
        }),
        fontFamily: 'SourceSansPro',
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 16.0,
            fontFamily: 'SourceSansPro',
            color: Colors.black,
          ),
        ),
      ),
      navigatorKey: NavigatorGlobal().key,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/login',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        AuthenticationApp(),
        HomeApp(),
        ProfileApp(),
      ];
}
