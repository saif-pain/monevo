import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inputDecorationTheme = InputDecorationTheme(
      labelStyle: const TextStyle(color: Colors.white),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.greenAccent),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Theme(
          data: Theme.of(
            context,
          ).copyWith(inputDecorationTheme: inputDecorationTheme),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png', height: 60),
              const SizedBox(height: 24),
              const Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(labelText: 'Full name'),
              ),
              const SizedBox(height: 12),
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(labelText: 'E-mail'),
              ),
              const SizedBox(height: 12),
              const TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 12),
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(labelText: 'Phone number'),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                ),
                child: const Text(
                  'Create account',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                child: const Text('Already have an account? Sign in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
