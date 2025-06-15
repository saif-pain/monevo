import 'package:flutter/material.dart';

class ExpenseDetailScreen extends StatelessWidget {
  const ExpenseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expenses')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          title: Text('Expense \$${(index + 1) * 10}'),
          subtitle: const Text('Category: Food'),
          trailing: IconButton(
            icon: const Icon(Icons.share),
            onPressed: () => Navigator.pushNamed(context, '/share-expense'),
          ),
        ),
      ),
    );
  }
}