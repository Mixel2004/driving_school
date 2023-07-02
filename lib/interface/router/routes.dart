import 'package:driving_trail/interface/screen/home_page.dart';
import 'package:driving_trail/interface/screen/signin_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String home = '/home';
  static const String signIn = '/signin';
  static Route? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case signIn:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      default:
        return null;
    }
  }
}
