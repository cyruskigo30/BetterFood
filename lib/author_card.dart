import 'dart:ui';

import 'package:flutter/material.dart';
import 'betterfood_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;
  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO REplace return container
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // add alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: BetterFoodTheme.darkTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: BetterFoodTheme.darkTextTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
          // add IconButton
          IconButton(
              icon: const Icon(Icons.favorite_border),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                const snackBar = SnackBar(
                  backgroundColor: Colors.blueAccent,
                  content: Text(
                    'Account Liked',
                    style: TextStyle(color: Colors.white),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }),
        ],
      ),
    );
  }
}
