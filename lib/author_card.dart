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
        children: [],
      ),
    );
  }
}
