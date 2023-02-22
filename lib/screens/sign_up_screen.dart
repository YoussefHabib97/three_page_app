import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
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
              child: const Text("Sign Up"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/signin");
                  },
                  child: const Text("Sign In"),
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
