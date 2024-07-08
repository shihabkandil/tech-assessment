import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import '../../constants/error_messages.dart';

mixin RequestHandler {
  Either<String, dynamic> _handleRequestSuccess(
    Response response,
  ) {
    try {
      String body = utf8.decode(response.bodyBytes);
      final jsonBody = jsonDecode(body);
      if (response.statusCode == HttpStatus.ok) {
        return Right(jsonBody);
      }
      return const Left(ErrorMessages.connectionFailure);
    } catch (_) {
      return const Left(ErrorMessages.parsingError);
    }
  }

  Either<String, dynamic> handleResponse(
    Either<String, Response> response,
  ) {
    return response.fold(
      (failure) => Left(failure),
      (success) => _handleRequestSuccess(success),
    );
  }
}
