import 'dart:async';

import 'package:flutter/material.dart';

import '../../Utilities/number_utility.dart';

class FadeInImageWelcomeWidget extends StatefulWidget {
  final String assetImage;
  const FadeInImageWelcomeWidget({required this.assetImage, super.key});

  @override
  State<FadeInImageWelcomeWidget> createState() =>
      _FadeInImageWelcomeWidgetState();
}

class _FadeInImageWelcomeWidgetState extends State<FadeInImageWelcomeWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    Timer(
        const Duration(
          microseconds: NumberUtility.welcomeImageDelayInMilliseconds,
        ), () {
      _animationController.forward();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(
        _animationController,
      ),
      child: Image.asset(
        widget.assetImage,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
