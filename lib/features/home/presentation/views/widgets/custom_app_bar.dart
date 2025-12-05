import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 32,
        top: 16,
        bottom: 32,
      ),
      child: Row(
        children: [
          Image.asset(
            AppAssets.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
            ),
          ),
        ],
      ),
    );
  }
}
