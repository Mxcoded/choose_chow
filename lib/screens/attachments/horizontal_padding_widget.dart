import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class HorizontalPaddingWidget extends StatelessWidget {
  final Widget child;
  const HorizontalPaddingWidget({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      child: child,
    );
  }
}
