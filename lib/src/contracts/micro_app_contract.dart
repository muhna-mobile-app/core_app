import 'package:flutter/material.dart';

import '../helpers/types.dart';

abstract class MicroApp {
  String get microAppName;

  Map<String, WidgetBuilderArgs> get routes;

  void init({
    required GlobalKey<NavigatorState> navigator,
  });
}
