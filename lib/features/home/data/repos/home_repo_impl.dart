import 'package:bookly/core/errors/exceptions/api_exception.dart';
import 'package:bookly/core/network/api_consumer.dart';
import 'package:bookly/core/network/constant/api_endpoints.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiConsumer api;
  HomeRepoImpl(this.api);

  @override
  Future<Either<String, List<BookModel>>> fetchNewestBooks() async {
    final String errorMessage;
    try {
      final data = await api.get(
        EndPoints.volumes,
        queryParameters: {
          'q': 'subject:Flutter',
          'Sorting': 'newest',
          'Filtering': 'free-ebooks',
        },
      );
      // Extract items from the response
      final items = ((data as Map<String, dynamic>)['items'] as List);

      // Parse items into a list of BookModel
      List<BookModel> books = items
          .map((item) => BookModel.fromJson(item))
          .toList();

      return Right(books); // Success case
    } on ApiException catch (e) {
      errorMessage = e.errorModel.errorMessage;
      return Left(errorMessage); // Failure case
    } catch (e) {
      errorMessage = e.toString();
      return Left(errorMessage); // Failure case
    }
  }

  @override
  Future<Either<String, List<BookModel>>> fetchFeaturedBooks() async {
    final String errorMessage;
    try {
      final data = await api.get(
        EndPoints.volumes,
        queryParameters: {
          'q': 'subject:Programming',
          'Filtering': 'free-ebooks',
        },
      );
      // Extract items from the response
      final items = ((data as Map<String, dynamic>)['items'] as List);

      // Parse items into a list of BookModel
      List<BookModel> books = items
          .map((item) => BookModel.fromJson(item))
          .toList();

      return Right(books); // Success case
    } on ApiException catch (e) {
      errorMessage = e.errorModel.errorMessage;
      return Left(errorMessage); // Failure case
    } catch (e) {
      errorMessage = e.toString();
      return Left(errorMessage); // Failure case
    }
  }
}
