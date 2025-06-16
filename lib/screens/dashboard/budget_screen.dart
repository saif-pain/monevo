import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Budget')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Monthly Budget Overview', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            CircularPercentIndicator(
              radius: 80.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.75,
              center: const Text(
                "75%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              footer: const Text(
                "Used of Monthly Budget",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}