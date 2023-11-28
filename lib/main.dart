import 'package:flutter/material.dart';
import 'package:stock_game/pages/bottom_nav.dart';
import 'package:stock_game/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMoneyTheme(),
      darkTheme: darkMoneyTheme(),
      themeMode: ThemeMode.system,
      home: const BottomNav(),
    );
  }
}
