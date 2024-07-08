import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../responses/restaurants_response.dart';

import '../../../../common/core/network/i_network_client.dart';
import '../../../../common/core/network/request_handler.dart';
import '../models/restaurant.dart';

import '../../../../common/constants/endpoints.dart';
import '../../../../common/data/models/uri_request.dart';
import 'i_restaurants_repository.dart';

@Singleton(as: IRestaurantsRepository)
class RestaurantsRepository
    with RequestHandler
    implements IRestaurantsRepository {
  RestaurantsRepository({required INetworkClient client}) : _client = client;

  final INetworkClient _client;

  @override
  Future<Either<String, List<Restaurant>>> getRestaurants() async {
    final uriRequest = UriRequest(uri: Uri.parse(Endpoints.getRestaurants));

    final response = await _client.get(uriRequest);

    final resultMap = handleResponse(response);
    return resultMap.fold(
      (failure) => Left(failure),
      (jsonResponse) {
        List<RestaurantResponse> restaurantsResponse = List.from(
          jsonResponse.map(
            (json) => RestaurantResponse.fromJson(json),
          ),
        );

        final List<Restaurant> restaurants = List.from(
          restaurantsResponse.map(
            (restaurantResponse) {
              return Restaurant.fromResponse(restaurantResponse);
            },
          ),
        );

        return Right(restaurants);
      },
    );
  }
}
