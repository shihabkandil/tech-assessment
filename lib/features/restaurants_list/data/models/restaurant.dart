import 'package:freezed_annotation/freezed_annotation.dart';

import '../responses/restaurants_response.dart';

part 'restaurant.freezed.dart';

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    required String photoUrl,
    required String name,
    required String description,
  }) = _Restaurant;

  factory Restaurant.fromResponse(RestaurantResponse response) {
    return Restaurant(
      photoUrl: response.photoUrl ?? "",
      name: response.name ?? "",
      description: response.description ?? "",
    );
  }
}
