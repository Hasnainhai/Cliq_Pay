import 'package:cliq_pay/view/auth/onboarding/onboarding_screen.dart';
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
