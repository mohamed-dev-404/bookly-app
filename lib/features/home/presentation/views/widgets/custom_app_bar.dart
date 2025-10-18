import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 16,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsPaths.logo,
            height: 22,
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
