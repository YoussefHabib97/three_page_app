import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/signup');
            },
            icon: const Icon(Icons.app_registration_rounded),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/signin');
            },
            icon: const Icon(Icons.login),
          ),
        ],
      ),
    );
  }
}
