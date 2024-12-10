import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/Utilities/text_utility.dart';
import 'package:choose_chow/screens/attachments/fadein_image_welcome_widget.dart';
import 'package:choose_chow/screens/attachments/fadein_text_widget.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _index = 0;
  final bool _firstTime = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: _firstTime
                ? Container()
                : RobotoCustomText(
                    text: "Skip",
                    textColor: ColorUtility.primaryColor,
                    fontSize: 15.dp,
                  ),
          )
        ],
      ),
      body: BackgroundImageWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _index == 0
                  ? const FadeInImageWelcomeWidget(
                      assetImage: AssetImageUtility.choppingBoardWithFood,
                    )
                  : Container(),
              _index == 1
                  ? const FadeInImageWelcomeWidget(
                      assetImage: AssetImageUtility.cookingAtHomeWithDog,
                    )
                  : Container(),
              _index == 2
                  ? const FadeInImageWelcomeWidget(
                      assetImage: AssetImageUtility.homeCookedMeal,
                    )
                  : Container(),
              _index == 3
                  ? const FadeInImageWelcomeWidget(
                      assetImage: AssetImageUtility.ecoShopMarket,
                    )
                  : Container(),
              SizedBox(
                height: 5.h,
              ),
              _index == 0
                  ? const FadeInTextWidget(
                      text: TextUtility.onboardingTextOne,
                    )
                  : Container(),
              _index == 1
                  ? const FadeInTextWidget(
                      text: TextUtility.onboardingTextTwo,
                    )
                  : Container(),
              _index == 2
                  ? const FadeInTextWidget(
                      text: TextUtility.onboardingTextThree,
                    )
                  : Container(),
              _index == 3
                  ? const FadeInTextWidget(
                      text: TextUtility.onboardingTextFour,
                    )
                  : Container(),
              SizedBox(
                height: 5.h,
              ),
              AnimatedSmoothIndicator(
                activeIndex: _index,
                count: 4,
                effect: ExpandingDotsEffect(
                  dotHeight: 8.dp,
                  dotWidth: 8.dp,
                  activeDotColor: ColorUtility.primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          _index++;

          setState(() {});
          if (_index > 3) {
            _index = _index > 3 ? 3 : _index;
            Navigator.pushNamed(
              context,
              "/signin_screen",
            );
          }
        },
        child: RobotoCustomText(
          text: _index == 3 ? "Get Started" : "Next",
          fontSize: 15.dp,
          textColor: ColorUtility.primaryColor,
        ),
      ),
    );
  }
}
