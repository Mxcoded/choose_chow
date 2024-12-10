import 'package:choose_chow/controllers/menu_index_cubit/cubit/menu_index_cubit.dart';
import 'package:choose_chow/screens/attachments/custom_navigation_bar.dart';
import 'package:choose_chow/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../Utilities/asset_image_utility.dart';
import 'attachments/icon_with_badge_ontop.dart';
import 'background_image_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        surfaceTintColor: Colors.white,
        // forceMaterialTransparency: true,
        toolbarHeight: 10.h,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leadingWidth: null,
        title: Image.asset(
          AssetImageUtility.logoHorizontal,
          fit: BoxFit.fitHeight,
          height: 5.h,
        ),
        actions: <Widget>[
          InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, "/notifications_screen"),
              child: const IconWithBadgeOntop()),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 3.w,
            ),
            child: InkWell(
              onTap: () =>
                  BlocProvider.of<MenuIndexCubit>(context).updateIndex(4),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 25.dp,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: const BackgroundImageWidget(
        child: Dashboard(),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
