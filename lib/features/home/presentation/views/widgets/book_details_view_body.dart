import 'package:bookly/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 8),
            const CustomBookDetailsAppBar(),
            const SizedBox(height: 16),
            const BookDetailsSection(),
            const SizedBox(height: 42),
            const BookActions(),
            SizedBox(height: height * .13),
            const SimilarBooksSection(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
