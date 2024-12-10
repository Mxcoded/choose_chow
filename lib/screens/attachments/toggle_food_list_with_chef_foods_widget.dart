import 'package:choose_chow/screens/attachments/food_item_widget.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ToogleFoodListWithChefFoodWidget extends StatefulWidget {
  const ToogleFoodListWithChefFoodWidget({super.key});

  @override
  State<ToogleFoodListWithChefFoodWidget> createState() =>
      _ToogleFoodListWithChefFoodWidgetState();
}

class _ToogleFoodListWithChefFoodWidgetState
    extends State<ToogleFoodListWithChefFoodWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BackgroundImageWidget(
      child: Container(
        margin: EdgeInsets.only(
          top: 3.h,
        ),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.symmetric(
              vertical: .7.h,
              horizontal: 5.w,
            ),
            child: const FoodItemWidget(
              axisHonrizontal: true,
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
