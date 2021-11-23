import 'package:flutter/material.dart';
import 'betterfood_theme.dart';

void main() {
  runApp(const BetterFood());
}

class BetterFood extends StatelessWidget {
  const BetterFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    // TODO Apply home widget
    return MaterialApp(
      theme: theme,
      title: 'BetterFood',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BetterFood',
            style: theme.textTheme.headline6,
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              'Welcome to better food',
              style: theme.textTheme.headline1,
            ),
          ),
        ),
      ),
    );
  }
}
