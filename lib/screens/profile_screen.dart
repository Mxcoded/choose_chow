import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/Utilities/reusable_codes.dart';
import 'package:choose_chow/screens/attachments/custom_navigation_bar.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:choose_chow/screens/global_horizontal_padding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBarWithPopContext(
        context: context,
        showLeading: false,
        title: const SpaceGroteskCustomText(
          text: "Profile",
          fontWeight: FontWeight.w700,
        ),
      ),
      body: BackgroundImageWidget(
        child: GloabalHorizontalPaddingWidget(
          child: ListView(
            children: [
              SizedBox(
                height: 1.h,
              ),
              Center(
                child: CircleAvatar(
                  radius: 5.5.h,
                  backgroundImage: const AssetImage(
                    AssetImageUtility.sampleUserImg,
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              RobotoCustomText(
                text: "Jasiel Abah",
                textColor: ColorUtility.hexadecimalGrey05,
                fontSize: 16.dp,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _rowItem(
                    onTap: () {},
                    btnText: "Edit Profile Pics",
                  ),
                  Container(
                    width: 2.w,
                  ),
                  _rowItem(
                    onTap: () {},
                    btnText: "Add Review",
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              _linkItem(
                onTap: () =>
                    Navigator.pushNamed(context, "/edit_profile_screen"),
                iconData: Icons.edit_square,
                linkText: "Edit Profile",
              ),
              _linkItem(
                onTap: () =>
                    Navigator.pushNamed(context, "/otp_verification_screen")
                        .then(
                  (value) {
                    if (value == true) {
                      Navigator.pushNamed(
                        context,
                        "/password_reset_input_screen",
                        arguments: true,
                      );
                    }
                  },
                ),
                iconData: Icons.password_rounded,
                linkText: "Change Password",
              ),
              _linkItem(
                onTap: () {
                  Navigator.pushNamed(context, "/order_history_screen");
                },
                iconData: Icons.history,
                linkText: "Order History",
              ),
              _linkItem(
                onTap: () {
                  Navigator.pushNamed(context, "/faq_screen");
                },
                iconData: Icons.question_answer,
                linkText: "FAQ",
              ),
              _linkItem(
                onTap: () {},
                iconData: Icons.logout,
                linkText: "Logout",
                isLogout: true,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }

  Widget _rowItem({
    required void Function() onTap,
    required String btnText,
  }) =>
      InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorUtility.hexadecimalGrey05.withOpacity(
                .5,
              ),
            ),
            borderRadius: BorderRadius.circular(
              1.5.w,
            ),
          ),
          child: RobotoCustomText(
            text: btnText,
          ),
        ),
      );

  Widget _linkItem({
    required void Function() onTap,
    required IconData iconData,
    required String linkText,
    bool isLogout = false,
  }) =>
      Container(
        margin: EdgeInsets.only(
          bottom: 1.h,
        ),
        child: Card(
          surfaceTintColor: Colors.white,
          child: ListTile(
            onTap: isLogout ? onTap : null,
            leading: Icon(iconData),
            title: RobotoCustomText(
              text: linkText,
            ),
            trailing: isLogout
                ? Container(
                    width: 0,
                  )
                : InkWell(
                    onTap: onTap,
                    child: const Icon(
                      Icons.navigate_next,
                    ),
                  ),
          ),
        ),
      );
}
