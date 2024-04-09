import 'package:flutter/material.dart';
import 'package:testApp/core/constants/app_strings.dart';
import 'package:testApp/core/constants/app_strings.dart';
import 'package:testApp/features/screens/home/view/user_list_screen.dart';
import '../screens/login/view/login_page.dart';
import '../screens/splash/view/splash_screen.dart';

class Routes {
  static const String splash = "/";
  static const String login = "/login";
  static const String home = "/home";
  static const String introPages = "/introPages";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splash:
        return MaterialPageRoute(
            builder: (_) => SplashScreen(), settings: routeSettings);

      case Routes.login:
        return MaterialPageRoute(
            builder: (_) => LoginPage(), settings: routeSettings);
      case Routes.home:
        return MaterialPageRoute(
            builder: (_) => HomeScreen(), settings: routeSettings);

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noPageFound),
        ),
        body: const Center(
          child: Text(AppStrings.noPageFound),
        ),
      ),
    );
  }
}
