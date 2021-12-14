import 'package:flutter/material.dart';
import 'betterfood_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // Adding stack of text
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: AssetImage('assets/images/image2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(
          children: [
            // add author information
            const AuthorCard(
              authorName: 'Cyrus Kigo',
              title: 'International Chef',
              imageProvider: AssetImage('assets/images/image1.png'),
            ),
            //  add positioned text
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: BetterFoodTheme.darkTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                      bottom: 70,
                      left: 16,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Smoothies',
                          style: BetterFoodTheme.darkTextTheme.headline1,
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
