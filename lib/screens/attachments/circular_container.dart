import 'package:flutter/material.dart';

import '../../Utilities/color_utility.dart';

class CircularContainer extends StatelessWidget {
  final Widget? child;
  final Color? backgroundColor;
  final Color? borderColor;
  const CircularContainer(
      {this.child, this.backgroundColor, this.borderColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        1.0,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorUtility.primaryColor,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor ?? ColorUtility.primaryColor,
          width: 0.5,
        ),
      ),
      child: child ??
          Container(
            padding: const EdgeInsets.all(
              7.0,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
    );
  }
}
