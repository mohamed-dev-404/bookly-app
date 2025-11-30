import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99 €',
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              onPressed: () {},
              backgroundColor: AppColor.lightOrange,
              foregroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
