import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  //* Routes pathes
  static const String homePath = '/home';
  static const String bookDetailsPath = '/bookDetails';

  //* GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homePath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsPath,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
