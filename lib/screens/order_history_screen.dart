import 'package:choose_chow/Utilities/reusable_codes.dart';
import 'package:choose_chow/screens/attachments/order_history_item.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:choose_chow/screens/global_horizontal_padding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({
    super.key,
  });

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBarWithPopContext(
        context: context,
        title: const RobotoCustomText(
          text: "Order History",
          fontWeight: FontWeight.w700,
        ),
      ),
      body: BackgroundImageWidget(
        child: GloabalHorizontalPaddingWidget(
            child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(
                bottom: 1.h,
                top: 1.h,
              ),
              child: const OrderHistoryItem()),
        )),
      ),
    );
  }
}
