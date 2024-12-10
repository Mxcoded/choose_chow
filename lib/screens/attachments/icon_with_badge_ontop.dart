import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWithBadgeOntop extends StatelessWidget {
  const IconWithBadgeOntop({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          FontAwesomeIcons.bell,
          size: 25.dp,
          color: Colors.black,
        ),
        Positioned(
          left: 3.w,
          child: Icon(
            Icons.brightness_1,
            color: Colors.red,
            size: 15.dp,
          ),
        )
      ],
    );
  }
}
