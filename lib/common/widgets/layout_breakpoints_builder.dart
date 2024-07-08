import 'package:flutter/material.dart';

class LayoutBreakpointsBuilder extends StatelessWidget {
  final Widget Function(BuildContext context) mobile;
  final Widget Function(BuildContext context) tablet;

  const LayoutBreakpointsBuilder({
    super.key,
    required this.mobile,
    required this.tablet,
  });

  static const double mobileMaxWidth = 599;
  static const double tabletMinWidth = 600;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= tabletMinWidth) {
      return tablet(context);
    } else {
      return mobile(context);
    }
  }
}
