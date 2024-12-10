import 'package:choose_chow/Utilities/custom_extensions.dart';
import 'package:choose_chow/Utilities/reusable_codes.dart';
import 'package:choose_chow/screens/attachments/order_history_item.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:choose_chow/screens/global_horizontal_padding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class OrderHistoryDetail extends StatelessWidget {
  const OrderHistoryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBarWithPopContext(
        context: context,
        title: const SpaceGroteskCustomText(
          text: "DETAIL",
          fontWeight: FontWeight.w700,
        ),
      ),
      body: BackgroundImageWidget(
        child: GloabalHorizontalPaddingWidget(
          child: ListView(
            children: <Widget>[
              _listItem(leading: "Order ID", trailing: "001133444"),
              _listItem(leading: "Delivered To", trailing: "Wuse"),
              SizedBox(
                height: 1.h,
              ),
              const OrderHistoryItem(
                showFullDetails: true,
              ),
              SizedBox(
                height: 2.h,
              ),
              _listItem(
                leading: "Price",
                trailing: "5,000".appendNairaSymbol(),
              ),
              _listItem(
                leading: "Delivery Fee",
                trailing: "500".appendNairaSymbol(),
              ),
              _listItem(
                leading: "Total",
                trailing: "5,500".appendNairaSymbol(),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const RobotoCustomText(
                  text: "Re-Order",
                  textColor: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _listItem({required String leading, required String trailing}) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 1.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RobotoCustomText(
            text: leading,
            fontSize: 14.dp,
          ),
          RobotoCustomText(
            text: trailing,
            fontWeight: FontWeight.w700,
            fontSize: 14.dp,
          )
        ],
      ),
    );
  }
}
