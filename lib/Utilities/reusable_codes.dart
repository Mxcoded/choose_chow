import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

AppBar generateAppBarWithPopContext(
        {required BuildContext context,
        required Widget title,
        bool centerTitle = false,
        bool showLeading = true}) =>
    AppBar(
      backgroundColor: Colors.white,
      centerTitle: centerTitle,
      leading: showLeading
          ? InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.navigate_before,
                size: 30.dp,
              ),
            )
          : Container(
              width: 0,
            ),
      title: title,
      leadingWidth: showLeading ? 56.0 : 0,
    );

ButtonStyle circleButtonStyle(
        {required BuildContext context, EdgeInsets? padding}) =>
    Theme.of(context).elevatedButtonTheme.style!.copyWith(
          iconColor: const WidgetStatePropertyAll(
            Colors.white,
          ),
          padding: WidgetStatePropertyAll(padding),
          shape: const WidgetStatePropertyAll(
            CircleBorder(),
          ),
        );
