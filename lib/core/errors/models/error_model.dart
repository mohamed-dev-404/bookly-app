import 'package:bookly/core/network/constant/api_keys.dart';

class ErrorModel {
  final String errorMessage;
  final int? statusCode;

  ErrorModel({
    required this.errorMessage,
    this.statusCode,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    String? message = jsonData[ApiKey.error][ApiKey.message];

    return ErrorModel(
      errorMessage: message ?? 'An unexpected error occurred',
    );
  }
}
