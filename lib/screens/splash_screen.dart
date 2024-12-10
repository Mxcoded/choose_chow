import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Image _logoImage;
  @override
  void initState() {
    _logoImage = Image.asset(
      AssetImageUtility.appLogoImage,
    );
    super.initState();
    _performDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImageWidget(
          child: Center(
        child: _logoImage,
      )),
    );
  }

  void _performDelay() async {
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    _gotoWelcomeMessagesScreen();
  }

  void _gotoWelcomeMessagesScreen() {
    Navigator.pushReplacementNamed(
      context,
      "/welcome_screen",
    );
  }

  @override
  void didChangeDependencies() {
    precacheImage(_logoImage.image, context);
    super.didChangeDependencies();
  }
}
