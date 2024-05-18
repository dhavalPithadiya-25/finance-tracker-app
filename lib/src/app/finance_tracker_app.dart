import 'package:finance_tracker_app/src/app/theme/theme.dart';
import 'package:finance_tracker_app/src/ui/auth/auth.dart';
import 'package:flutter/material.dart';

class FinanceTrackerApp extends StatelessWidget {
  const FinanceTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: FinanceTrackerAppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      theme: FinanceTrackerAppTheme.lightTheme,
      home: const LoginView(),
    );
  }
}
