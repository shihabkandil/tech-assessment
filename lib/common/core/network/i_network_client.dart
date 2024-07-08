import 'package:dartz/dartz.dart';
import 'package:http/http.dart';

import '../../data/models/uri_request.dart';


abstract class INetworkClient {
  Future<Either<String, Response>> get(UriRequest request);
}
