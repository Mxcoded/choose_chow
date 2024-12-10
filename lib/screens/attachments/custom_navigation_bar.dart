import 'package:choose_chow/controllers/menu_index_cubit/cubit/menu_index_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utilities/color_utility.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      margin: EdgeInsets.only(
        bottom: 1.h,
      ),
      child: BlocBuilder<MenuIndexCubit, MenuIndexState>(
        builder: (context, state) {
          return BottomNavigationBar(
            onTap: (value) =>
                BlocProvider.of<MenuIndexCubit>(context).updateIndex(value),
            landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            backgroundColor: Colors.white,
            currentIndex: BlocProvider.of<MenuIndexCubit>(context).state.index,
            unselectedItemColor: ColorUtility.hexadecimalGrayColor,
            selectedItemColor: ColorUtility.primaryColor,
            showUnselectedLabels: true,
            iconSize: 24.dp,
            selectedLabelStyle: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 12.dp,
              color: ColorUtility.primaryColor,
            ),
            unselectedLabelStyle: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 12.dp,
              color: ColorUtility.hexadecimalGrayColor,
            ),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.house,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.book,
                  ),
                  label: "Recipes"),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.utensils,
                  ),
                  label: "Foods"),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.user,
                  ),
                  label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.cartShopping,
                  ),
                  label: "Cart"),
            ],
          );
        },
      ),
    );
  }
}
