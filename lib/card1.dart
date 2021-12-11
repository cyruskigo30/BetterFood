import 'package:flutter/material.dart';
import 'betterfood_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  final String category = 'Editor\'s Choice';
  final String title = 'The art of Cooking';
  final String description =
      'learn how to ake the perfect recipe thats easy to follow';
  final String chef = 'Cyrus Kigo';

  @override
  Widget build(BuildContext context) {
    return Center(
      // TODO card 1 Decorate container
      child: Container(
        // Adding stack of text
        child: Stack(
          children: [
            Text(
              category,
              style: BetterFoodTheme.darkTextTheme.bodyText1,
            ),
            Text(
              title,
              style: BetterFoodTheme.darkTextTheme.headline5,
            ),
            Text(
              description,
              style: BetterFoodTheme.darkTextTheme.bodyText1,
            ),
            Text(
              chef,
              style: BetterFoodTheme.darkTextTheme.bodyText1,
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
          image: DecorationImage(
            image: AssetImage('assets/images/image1.png'),
            fit: BoxFit.contain,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
