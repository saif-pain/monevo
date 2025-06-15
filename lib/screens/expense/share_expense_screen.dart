import 'package:flutter/material.dart';

class ShareExpenseScreen extends StatelessWidget {
  const ShareExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Share Expense')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Enter user email'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Add invite logic
              },
              child: const Text('Send Invite'),
            )
          ],
        ),
      ),
    );
  }
}