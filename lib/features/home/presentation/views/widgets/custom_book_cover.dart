import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomBookCover extends StatelessWidget {
  const CustomBookCover({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.75 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppAssets.test),
          ),
        ),
      ),
    );
  }
}
