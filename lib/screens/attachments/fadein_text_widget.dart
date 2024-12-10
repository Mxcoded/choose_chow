import 'dart:async';

import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../Utilities/number_utility.dart';

class FadeInTextWidget extends StatefulWidget {
  final String text;

  const FadeInTextWidget({required this.text, super.key});

  @override
  State<FadeInTextWidget> createState() => _FadeInTextWidgetState();
}

class _FadeInTextWidgetState extends State<FadeInTextWidget>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    Timer(
        const Duration(
            milliseconds: NumberUtility.welcomeTextDelayInMilliseconds), () {
      _animationController.forward();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 2.w,
        ),
        child: SpaceGroteskCustomText(
          text: widget.text,
          fontWeight: FontWeight.bold,
          fontSize: 25.dp,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
