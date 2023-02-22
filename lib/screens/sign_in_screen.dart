import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  hintText: "example@domain.com",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  hintText: "At least 6 characters",
                ),
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Sign In"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/signup');
                  },
                  child: const Text("Sign Up"),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              icon: const Icon(Icons.person_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
