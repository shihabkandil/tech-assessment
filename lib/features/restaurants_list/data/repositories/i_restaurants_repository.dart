import 'package:dartz/dartz.dart';

import '../models/restaurant.dart';

abstract class IRestaurantsRepository {
  Future<Either<String, List<Restaurant>>> getRestaurants();
}
