import 'package:choose_chow/screens/attachments/search_item_field.dart';
import 'package:choose_chow/screens/attachments/toggle_food_list_with_chef_chefs_widget.dart';
import 'package:choose_chow/screens/attachments/toggle_food_list_with_chef_foods_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ToogleFoodListWithChefScreen extends StatefulWidget {
  const ToogleFoodListWithChefScreen({super.key});

  @override
  State<ToogleFoodListWithChefScreen> createState() =>
      _ToogleFoodListWithChefScreenState();
}

class _ToogleFoodListWithChefScreenState
    extends State<ToogleFoodListWithChefScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 18.h,
          leading: Container(),
          leadingWidth: 0,
          title: const SearchItemField(
            showTrailingSlider: false,
            screenToPopUp: "/search_food_screen",
            placeHolderText: "Search Any Food",
            borderColor: Colors.black,
          ),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: "Food",
              ),
              Tab(
                text: "Chef",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ToogleFoodListWithChefFoodWidget(),
            ToogleFoodListWithChefChefsWidget(),
          ],
        ),
      ),
    );
  }
}
