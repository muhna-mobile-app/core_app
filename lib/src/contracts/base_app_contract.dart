import 'package:flutter/material.dart';

import '../helpers/navigator_global.dart';
import '../helpers/types.dart';
import 'micro_app_contract.dart';

abstract class BaseApp {
  List<MicroApp> get microApps;

  Map<String, WidgetBuilderArgs> get baseRoutes;

  final Map<String, WidgetBuilderArgs> routes = {};

  void initializeMicroApps() {
    if (microApps.isNotEmpty) {
      for (MicroApp microApp in microApps) {
        microApp.init(navigator: NavigatorGlobal().key);
      }
    }
  }

  void registerRouters() {
    if (baseRoutes.isNotEmpty) routes.addAll(baseRoutes);
    if (microApps.isNotEmpty) {
      for (MicroApp microapp in microApps) {
        routes.addAll(microapp.routes);
      }
    }
  }

  Route<dynamic>? generateRoute(RouteSettings settings) {
    var routerName = settings.name;
    var routerArgs = settings.arguments;

    var navigateTo = routes[routerName];
    if (navigateTo == null) return null;

    return MaterialPageRoute(
      builder: (context) => navigateTo(context, routerArgs),
    );
  }
}
