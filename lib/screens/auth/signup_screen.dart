import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 60),
            const SizedBox(height: 24),
            const TextField(decoration: InputDecoration(labelText: 'Full name')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'E-mail')),
            const SizedBox(height: 12),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Phone number')),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
              child: const Text('Create account', style: TextStyle(color: Colors.black)),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: const Text('Already have an account? Sign in'),
            )
          ],
        ),
      ),
    );
  }
}
