import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '19.99',
            style: AppStyles.text20Regular.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextSpan(
            text: ' €',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
