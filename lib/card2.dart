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
          color: Colors.blueGrey,
          image: DecorationImage(
            image: AssetImage('assets/images/image2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(
          children: const [
            // add author information
            AuthorCard(
              authorName: 'Cyrus Kigo',
              title: 'International Chef',
              imageProvider: AssetImage('assets/images/image1.png'),
            ),
            // TODO add positioned text
          ],
        ),
      ),
    );
  }
}
