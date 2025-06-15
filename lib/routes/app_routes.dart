import 'package:flutter/material.dart';
import '../screens/onboarding/onboarding_screen.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/signup_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/expense/add_expense_screen.dart';
import '../screens/expense/expense_detail_screen.dart';
import '../screens/expense/share_expense_screen.dart';
import '../screens/profile/user_profile_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const OnboardingScreen(),
  '/login': (context) => const LoginScreen(),
  '/signup': (context) => const SignupScreen(),
  '/home': (context) => const HomeScreen(),
  '/add-expense': (context) => const AddExpenseScreen(),
  '/expense-detail': (context) => const ExpenseDetailScreen(),
  '/share-expense': (context) => const ShareExpenseScreen(),
  '/profile': (context) => const UserProfileScreen(),
};