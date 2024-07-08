import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/core/injector/locator.dart';
import '../../data/models/restaurant.dart';
import '../../data/repositories/i_restaurants_repository.dart';

part 'restaurants_state.dart';
part 'restaurants_cubit.freezed.dart';

class RestaurantsCubit extends Cubit<RestaurantsState> {
  RestaurantsCubit({
    IRestaurantsRepository? restaurantsRepository,
  })  : _restaurantsRepository =
            restaurantsRepository ?? locator<IRestaurantsRepository>(),
        super(const RestaurantsState.loading());

  final IRestaurantsRepository _restaurantsRepository;

  void getRestaurants() async {
    emit(const RestaurantsState.loading());

    final restaurantsResult = await _restaurantsRepository.getRestaurants();

    restaurantsResult.fold(
      (error) => emit(RestaurantsState.failure(error)),
      (restaurants) => emit(RestaurantsState.success(restaurants)),
    );
  }
}
