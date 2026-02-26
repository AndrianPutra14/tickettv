import 'package:flutter/material.dart';
import 'package:project1/screens/onboarding.dart';
import 'package:project1/screens/welcome_screen.dart';
import 'package:project1/screens/user/homepage.dart';

class AppRoutes {
  // Route names
  static const String onboarding = '/';
  static const String welcome = '/welcome';
  static const String home = '/home';

  // Route map
  static Map<String, WidgetBuilder> get routes => {
        onboarding: (context) => const OnboardingScreen(),
        welcome: (context) => const WelcomeScreen(),
        home: (context) => const HomePage(),
      };
}
