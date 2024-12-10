import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class GloabalHorizontalPaddingWidget extends StatelessWidget {
  final double? padding;
  final Widget child;
  const GloabalHorizontalPaddingWidget(
      {required this.child, this.padding, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: padding ?? 5.w,
      ),
      child: child,
    );
  }
}
