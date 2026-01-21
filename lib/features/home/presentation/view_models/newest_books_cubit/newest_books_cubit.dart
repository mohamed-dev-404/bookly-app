import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo homeRepo;
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading()); // Loading state
    final result = await homeRepo.fetchNewestBooks(); // Fetch data from repository
    result.fold(
      (errMessage) {
        emit(NewestBooksFailure(errorMessage: errMessage)); // Failure case
      },
      (books) {
        emit(NewestBooksSuccess(books: books)); // Success case
      },
    );
  }
}
