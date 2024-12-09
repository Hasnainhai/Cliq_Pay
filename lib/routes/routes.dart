import 'package:cliq_pay/view/auth/login/login_screen.dart';
import 'package:cliq_pay/view/auth/onboarding/onboarding_screen.dart';
import 'package:cliq_pay/view/auth/signup/signup_screen.dart';
import 'package:cliq_pay/view/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../view/auth/onboarding/splash_screen.dart';
import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      case RoutesName.onboarding:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnboardingScreen(),
        );
      case RoutesName.login:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        );
      case RoutesName.signUp:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SignupScreen(),
        );
      case RoutesName.homeScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No routes define'),
              ),
            );
          },
        );
    }
  }
}
