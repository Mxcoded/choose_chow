import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class BackgroundImageWidget extends StatelessWidget {
  final Widget child;
  const BackgroundImageWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AssetImageUtility.backgroundImage,
          ),
        ),
      ),
      child: child,
    );
  }
}
