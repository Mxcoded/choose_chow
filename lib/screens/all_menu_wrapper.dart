import 'package:choose_chow/controllers/menu_index_cubit/cubit/menu_index_cubit.dart';
import 'package:choose_chow/screens/cart_screen.dart';
import 'package:choose_chow/screens/foods_screen.dart';
import 'package:choose_chow/screens/home_screen.dart';
import 'package:choose_chow/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'recipes_screen.dart';

// ignore: must_be_immutable
class AllMenuWrapper extends StatelessWidget {
  final PageController _pageController = PageController();
  AllMenuWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<MenuIndexCubit, MenuIndexState>(
      listener: (BuildContext context, state) {
        _goto(state.index);
      },
      child: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const <Widget>[
          HomeScreen(),
          RecipesScreen(),
          // Text("Page 3"),
          FoodsScreen(),
          ProfileScreen(),
          CartScreen(),
        ],
      ),
    );
  }

  void _goto(int index) => _pageController.jumpToPage(
        index,
      );
}
