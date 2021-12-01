import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO add state variables and functions
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BetterFood',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO Show selected tab
      body: Center(
        child: Text(
          'Welcome to BetterFood 🥘',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
    // TODO Add bottom navigation bar
  }
}
