import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_cover.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .30),
              child: const CustomBookCover(),
            ),
            const SizedBox(height: 36),
            const Text(
              'The Jungle Book',
              style: AppStyles.text30SemiBold,
            ),
            const SizedBox(height: 6),
            Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: AppStyles.text18SemiBold.copyWith(
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(height: 42),
            const BookActions(),
            const SizedBox(
              height: 50,
            ),
            const SimilarBooksSection(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
