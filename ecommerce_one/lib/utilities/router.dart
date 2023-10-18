import 'package:ecommerce_one/utilities/routes.dart';
import 'package:ecommerce_one/views/pages/bottom_navbar.dart';
import 'package:ecommerce_one/views/pages/landing_page.dart';
import 'package:ecommerce_one/views/pages/auth_page.dart';
import 'package:flutter/cupertino.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.bottomNavBarRoute:
      return CupertinoPageRoute(
          builder: (_) => const BottomNavBar(), settings: settings);
    case AppRoutes.loginPageRoute:
      return CupertinoPageRoute(
          builder: (_) => const AuthPage(), settings: settings);
    case AppRoutes.landingPageRoute:
    default:
      return CupertinoPageRoute(
        builder: (_) => const LandingPage(),
      );
  }
}
