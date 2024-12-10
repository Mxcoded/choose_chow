import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/Utilities/reusable_codes.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:choose_chow/screens/global_horizontal_padding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> dummyCounter = List.filled(3, 1);

    return Scaffold(
      appBar: generateAppBarWithPopContext(
        context: context,
        title: const SpaceGroteskCustomText(
          text: "FAQ",
          fontWeight: FontWeight.w700,
        ),
      ),
      body: BackgroundImageWidget(
        child: GloabalHorizontalPaddingWidget(
          child: ListView(
            children: <Widget>[
                  SizedBox(
                    height: 5.h,
                  ),
                ] +
                dummyCounter.map((e) => _expansionTileItem()).toList(),
          ),
        ),
      ),
    );
  }

  Widget _expansionTileItem() => Container(
        margin: EdgeInsets.only(
          bottom: 2.h,
        ),
        padding: EdgeInsets.only(
          left: 5.w,
          right: 5.w,
          bottom: 2.h,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: ColorUtility.primaryColor.withOpacity(
            .2,
          )),
          borderRadius: BorderRadius.circular(
            2.w,
          ),
        ),
        child: ExpansionTile(
          collapsedShape: Border.all(
            width: 0,
            color: Colors.transparent,
          ),
          shape: Border.all(
            width: 0,
            color: Colors.transparent,
          ),
          tilePadding: const EdgeInsets.only(
            left: 0,
          ),
          expandedAlignment: Alignment.topLeft,
          title: RobotoCustomText(
            text: "How do I order for food and ingredients?",
            fontWeight: FontWeight.w500,
            fontSize: 14.dp,
          ),
          children: [
            RobotoCustomText(
              text:
                  "Lorem ipsum dolor sit amet consectetur. Ut est sit fermentum ante ut etiam venenatis. Iaculis tristique odio enim dui viverra eu nullam proin risus. Velit quis sit ac lacinia sit gravida sed cras. Suspendisse tortor magna libero neque platea ullamcorper ipsum. Amet libero nulla augue aliquet ipsum viverra iaculis. Ornare.",
              fontWeight: FontWeight.w400,
              fontSize: 13.dp,
            )
          ],
        ),
      );
}
