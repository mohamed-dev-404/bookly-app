import 'package:bookly/features/splash/presentation/views/widgets/animated_slogan.dart';
import 'package:bookly/features/splash/presentation/views/widgets/opacity_animated_logo.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  double opacity = 0;
  CrossFadeState crossFadeState = CrossFadeState.showFirst;

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(() {
          opacity = 1;
          crossFadeState = CrossFadeState.showSecond;
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OpacityAnimatedLogo(opacity: opacity),
        const SizedBox(
          height: 32,
        ),
        AnimatedSlogan(crossFadeState: crossFadeState),
      ],
    );
  }
}
