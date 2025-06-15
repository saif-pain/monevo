import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            const Text('Welcome back!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(labelText: 'E-mail'),
            ),
            const SizedBox(height: 8),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (_) {}),
                    const Text('Remember Me')
                  ],
                ),
                TextButton(onPressed: () {}, child: const Text('Forgot Password?')),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
              child: const Text('Sign in', style: TextStyle(color: Colors.black)),
            ),
            const SizedBox(height: 24),
            const Text('or continue with'),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(icon: const Icon(Icons.facebook), onPressed: () {}),
                IconButton(icon: const Icon(Icons.g_mobiledata), onPressed: () {}),
                IconButton(icon: const Icon(Icons.account_box), onPressed: () {}),
              ],
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/signup'),
              child: const Text('or Create account'),
            )
          ],
        ),
      ),
    );
  }
}