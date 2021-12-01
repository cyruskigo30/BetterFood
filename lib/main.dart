import 'package:flutter/material.dart';
import 'home.dart';
import 'betterfood_theme.dart';

void main() {
  runApp(const BetterFood());
}

class BetterFood extends StatelessWidget {
  const BetterFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = BetterFoodTheme.light();
    //? Apply home widget
    return MaterialApp(
      theme: theme,
      title: 'BetterFood',
      home: const Home(),
    );
  }
}
