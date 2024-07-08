import 'package:flutter/material.dart';

extension AdaptiveExtension on BuildContext {
  bool get isMobile => MediaQuery.sizeOf(this).shortestSide <= 600;

  bool get isTablet => MediaQuery.sizeOf(this).shortestSide > 600;
}
