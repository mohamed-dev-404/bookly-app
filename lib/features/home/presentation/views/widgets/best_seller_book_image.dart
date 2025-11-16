import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerBookImage extends StatelessWidget {
  const BestSellerBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsPaths.test,
            ),
          ),
        ),
      ),
    );
  }
}
