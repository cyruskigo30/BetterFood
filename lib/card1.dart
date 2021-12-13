import 'package:flutter/material.dart';
import 'betterfood_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  final String category = 'Editor\'s Choice';
  final String title = 'The art of Cooking';
  final String description = 'Take the perfect recipe thats easy to follow';
  final String chef = 'by Cyrus Kigo';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
          image: DecorationImage(
            image: AssetImage('assets/images/image1.png'),
            fit: BoxFit.contain,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        // Adding stack of text
        child: Stack(
          children: [
            Text(
              category,
              style: BetterFoodTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                title,
                style: BetterFoodTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                description,
                style: BetterFoodTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                chef,
                style: BetterFoodTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
