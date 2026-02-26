import 'package:flutter/material.dart';
import 'package:project1/screens/onboarding.dart';
import 'package:project1/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EzyTix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFC42D27)),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.onboarding,
      routes: AppRoutes.routes,
    );
  }
}
