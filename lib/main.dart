import 'package:flutter/material.dart';

// Screen imports
import 'package:three_page_app/screens/home_screen.dart';
import 'package:three_page_app/screens/onboarding_screen.dart';
import 'package:three_page_app/screens/sign_in_screen.dart';
import 'package:three_page_app/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
        '/home': (context) => const HomeScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/signin': (context) => const SignInScreen(),
      },
    );
  }
}
