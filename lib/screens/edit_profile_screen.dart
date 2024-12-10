import 'package:choose_chow/Utilities/reusable_codes.dart';
import 'package:choose_chow/screens/attachments/custom_text_formfield.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:choose_chow/screens/global_horizontal_padding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'attachments/roboto_custom_text.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBarWithPopContext(
        context: context,
        title: const SpaceGroteskCustomText(
          text: "Edit Profile",
          fontWeight: FontWeight.w700,
        ),
      ),
      body: BackgroundImageWidget(
        child: GloabalHorizontalPaddingWidget(
          child: ListView(
            children: [
              SizedBox(
                height: 4.h,
              ),
              Center(
                child: Icon(
                  FontAwesomeIcons.userPen,
                  size: 50.dp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const CustomTextFormField(
                labelText: "Surname",
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 2.h,
              ),
              const CustomTextFormField(
                labelText: "Firstname",
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 2.h,
              ),
              const CustomTextFormField(
                labelText: "Phone Number",
                textInputType: TextInputType.phone,
              ),
              SizedBox(
                height: 2.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: RobotoCustomText(
                  text: "Update Profile",
                  fontWeight: FontWeight.w600,
                  textColor: Colors.white,
                  fontSize: 16.dp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
