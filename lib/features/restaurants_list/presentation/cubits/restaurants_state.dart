part of 'restaurants_cubit.dart';

@freezed
class RestaurantsState with _$RestaurantsState {
  const factory RestaurantsState.loading() = _Loading;
  const factory RestaurantsState.success(List<Restaurant> restaurants) =
      _Success;
  const factory RestaurantsState.failure(String error) = _Failure;
}
