import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import '../../constants/error_messages.dart';
import '../../data/models/uri_request.dart';
import '../internet_checker/i_internet_checker.dart';
import 'i_network_client.dart';

@Singleton(as: INetworkClient)
class NetworkClient implements INetworkClient {
  NetworkClient({required IInternetChecker internetChecker})
      : _internetChecker = internetChecker;

  final IInternetChecker _internetChecker;

  @override
  Future<Either<String, Response>> get(UriRequest request) async {
    try {
      if (await _internetChecker.isConnected() == false) {
        return const Left(ErrorMessages.noInternetConnection);
      }

      final response = await _client.get(request.uri);
      return Right(response);
    } on SocketException catch (_) {
      return const Left(ErrorMessages.noInternetConnection);
    } catch (_) {
      return const Left(ErrorMessages.connectionFailure);
    }
  }

  @lazySingleton
  Client get _client => Client();
}
