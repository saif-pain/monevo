import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Statistics')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Daily Expense Trends', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Expanded(
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 100),
                        FlSpot(1, 300),
                        FlSpot(2, 500),
                        FlSpot(3, 700),
                        FlSpot(4, 400),
                        FlSpot(5, 900),
                        FlSpot(6, 600),
                      ],
                      isCurved: true,
                      color: Colors.greenAccent,
                      barWidth: 4,
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}