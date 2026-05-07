import 'package:flutter/material.dart';
import '../views/login_view.dart';
import '../views/home_view.dart';
import '../views/analysis_view.dart';

class AppRoutes {
  static const String login = '/';
  static const String home = '/home';
  static const String analysis = '/analysis';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => const LoginView(),
    home: (context) => const HomeView(),
    analysis: (context) => const AnalysisView(),
  };
}