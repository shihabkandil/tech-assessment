import 'secrets/env.dart';

class Endpoints {
  Endpoints._();

  static final baseUrl = Env.baseUrl;

  static final String getRestaurants = "${baseUrl}api/v1/restaurants/";
}
