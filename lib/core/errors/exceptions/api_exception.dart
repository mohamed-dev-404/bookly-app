// core/errors/exceptions/api_exception.dart
import 'package:bookly/core/errors/exceptions/app_exception.dart';

class ApiException extends AppException {
  ApiException({required super.errorModel});
}
