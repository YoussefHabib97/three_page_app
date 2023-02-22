import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/signin');
        },
        child: const Icon(Icons.navigate_next),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "This is a 3 page example application made using Flutter!",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Click the blue button at the bottom right of the screen to continue.",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
