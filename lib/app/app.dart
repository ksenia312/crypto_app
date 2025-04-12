import 'package:crypto_app/features/home/view/home_screen.dart';
import 'package:crypto_app/shared/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptocurrency App',
      theme: AppTheme.dark,
      home: HomeScreen(),
    );
  }
}
