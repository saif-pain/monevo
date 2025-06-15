import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> onboardingData = [
      {
        'title': 'Take Control of Your Finances',
        'desc': 'Welcome to Monevo! Track your daily expenses, share with others, and stay in control.',
      },
      {
        'title': 'Budget Smarter',
        'desc': 'Set budgets, track where your money goes, and build better financial habits.',
      },
      {
        'title': 'Visualize Spending',
        'desc': 'Get beautiful charts and insights of your monthly and yearly expenses.',
      },
    ];

    PageController controller = PageController();

    return Scaffold(
      body: PageView.builder(
        controller: controller,
        itemCount: onboardingData.length,
        itemBuilder: (context, index) {
          final data = onboardingData[index];
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Image.asset('assets/logo.png', height: 60),
                const SizedBox(height: 40),
                Text(
                  data['title']!,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  data['desc']!,
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    if (index == onboardingData.length - 1) {
                      Navigator.pushReplacementNamed(context, '/login');
                    } else {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    }
                  },
                  child: Text(index == onboardingData.length - 1 ? 'Get Started' : 'Next'),
                ),
                TextButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
                  child: const Text('Skip'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
