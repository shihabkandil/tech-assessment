import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constants/theme/app_theme_data.dart';
import '../../../../common/constants/theme/app_colors.dart';
import '../../../../common/widgets/loading_widget.dart';
import '../cubits/restaurants_cubit.dart';
import '../widgets/restaurant_card.dart';

@RoutePage()
class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantsCubit()..getRestaurants(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: AppColors.primaryColor,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: false,
            title: Image.asset(
              "assets/images/logo.png",
              width: 90,
              height: 150,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(14),
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(8),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      'Our Restaurants',
                      style: context.textTheme.titleLarge
                          ?.copyWith(color: AppColors.black),
                    ),
                  ),
                ),
                BlocBuilder<RestaurantsCubit, RestaurantsState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const SliverToBoxAdapter(
                          child: LoadingWidget(),
                        );
                      },
                      success: (restaurants) => SliverPadding(
                        padding: const EdgeInsets.all(8),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              final restaurant = restaurants[index];
                              return RestaurantCard(
                                restaurant: restaurant,
                              );
                            },
                            childCount: restaurants.length,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
