import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/extensions/context_extensions.dart';
import '../../../../common/constants/strings.dart';
import '../../../../common/constants/theme/app_theme_data.dart';
import '../../../../common/constants/theme/app_colors.dart';
import '../../../../common/widgets/loading_widget.dart';
import '../../../../gen/assets.gen.dart';
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
            title: Assets.images.logo.image(
              width: 90,
              height: 150,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(14),
            child: RefreshIndicator(
              onRefresh: () async =>
                  context.read<RestaurantsCubit>().getRestaurants(),
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.all(8),
                    sliver: SliverToBoxAdapter(
                      child: Text(
                        Strings.ourRestaurants,
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
                          sliver: SliverGrid(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: context.isMobile ? 1 : 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 12,
                              childAspectRatio: 3 / 1,
                            ),
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
          ),
        );
      }),
    );
  }
}
