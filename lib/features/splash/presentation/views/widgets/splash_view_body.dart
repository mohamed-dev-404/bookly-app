import 'package:bookly/core/constants/constsant.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/widgets/animated_slogan.dart';
import 'package:bookly/features/splash/presentation/views/widgets/opacity_animated_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

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
        Get.off(
          () => const HomeView(),
          transition: Transition.downToUp,
          duration: kNavigationTransition,
        );
      },
    );
  }
}
