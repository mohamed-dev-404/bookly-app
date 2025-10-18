import 'package:flutter/material.dart';

class AnimatedSlogan extends StatelessWidget {
  const AnimatedSlogan({
    super.key,
    required this.crossFadeState,
  });

  final CrossFadeState crossFadeState;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Read Anything,',
          style: TextStyle(fontSize: 22),
        ),
        AnimatedCrossFade(
          firstChild: const SizedBox(),
          secondChild: const Text(
            ' Anytime For Free',
            style: TextStyle(fontSize: 22),
          ),
          crossFadeState: crossFadeState,
          duration: const Duration(seconds: 2),
        ),
      ],
    );
  }
}
