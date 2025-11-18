import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/splash/presentation/views/widgets/animated_slogan.dart';
import 'package:bookly/features/splash/presentation/views/widgets/opacity_animated_logo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    super.initState();
    startAnimation();
    navigateToHome();
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

  void startAnimation() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(() {
          opacity = 1;
          crossFadeState = CrossFadeState.showSecond;
        });
      },
    );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        if (!mounted) return;
        context.go(AppRouter.homeViewPath);
      },
    );
  }
}
