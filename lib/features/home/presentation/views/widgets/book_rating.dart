import 'package:bookly/core/constants/app_colors.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: AppColor.ratingStarColor,
        ),
        const SizedBox(
          width: 6,
        ),
        const Text(
          '4.8',
          style: AppStyles.text16Medium,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '(2390)',
          style: AppStyles.text14Regular.copyWith(
            color: Colors.white.withValues(alpha: .5),
          ),
        ),
      ],
    );
  }
}
