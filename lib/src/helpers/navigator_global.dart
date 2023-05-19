import 'package:flutter/material.dart';

class NavigatorGlobal {
  static final NavigatorGlobal _instance = NavigatorGlobal._internal();
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  factory NavigatorGlobal() {
    return _instance;
  }

  NavigatorGlobal._internal();

  get key => _instance._navigatorKey;
}
