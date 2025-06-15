import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monevo Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => Navigator.pushNamed(context, '/profile'),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => Navigator.pushNamed(context, '/add-expense'),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text('Monthly Summary', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Container(
              color: Colors.green,
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              child: const Center(child: Text('Chart Placeholder')),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/expense-detail'),
              child: const Text('View All Expenses'),
            ),
          ],
        ),
      ),
    );
  }
}