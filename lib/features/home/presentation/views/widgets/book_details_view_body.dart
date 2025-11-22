import 'package:bookly/features/home/presentation/views/widgets/custom_book_cover.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .28),
            child: const CustomBookCover(),
          ),
          const SizedBox(height: 36),
        ],
      ),
    );
  }
}
