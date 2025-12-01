import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class OpacityAnimatedLogo extends StatelessWidget {
  const OpacityAnimatedLogo({
    super.key,
    required this.opacity,
  });

  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(
          seconds: 3,
        ),
        child: Image.asset(
          AppAssets.logo,
        ),
      ),
    );
  }
}
