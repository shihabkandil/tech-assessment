import 'package:flutter/material.dart';

import '../constants/theme/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 50,
      height: 50,
      child: Center(
        child: CircularProgressIndicator.adaptive(
          backgroundColor: AppColors.black,
        ),
      ),
    );
  }
}
