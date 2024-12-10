import 'package:choose_chow/controllers/menu_index_cubit/cubit/menu_index_cubit.dart';
import 'package:choose_chow/models/comment_vm.dart';
import 'package:choose_chow/screens/all_menu_wrapper.dart';
import 'package:choose_chow/screens/allow_notification_screen.dart';
import 'package:choose_chow/screens/categories_screen.dart';
import 'package:choose_chow/screens/chef_detail_screen.dart';
import 'package:choose_chow/screens/comments_screen.dart';
import 'package:choose_chow/screens/edit_profile_screen.dart';
import 'package:choose_chow/screens/faq_screen.dart';
import 'package:choose_chow/screens/notifications_screen.dart';
import 'package:choose_chow/screens/order_history_detail.dart';
import 'package:choose_chow/screens/order_history_screen.dart';
import 'package:choose_chow/screens/recipe_detail_screen.dart';
import 'package:choose_chow/screens/reset_password_screen.dart';
import 'package:choose_chow/screens/reset_password_success_screen.dart';
import 'package:choose_chow/screens/search_food_screen.dart';
import 'package:choose_chow/screens/search_screen.dart';
import 'package:choose_chow/screens/single_comment_widget.dart';
import 'package:choose_chow/screens/splash_screen.dart';
import 'package:choose_chow/screens/tell_us_about_yourself_screen.dart';
import 'package:choose_chow/screens/toogle_food_list_with_chef_screen.dart';
import 'package:choose_chow/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/food_detail_screen.dart';
import 'screens/otp_verification_screen.dart';
import 'screens/password_reset_input_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/signin_screen.dart';

class AllRoutes {
  static Route routes(RouteSettings settings) {
    Route goto(
        {required Widget gotoWidget,
        required RouteSettings routeSettings,
        bool useSlideAnimation = false}) {
      Route slideAnimation(
              {required Widget child, required RouteSettings routeSettings}) =>
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => child,
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.ease);
              return SlideTransition(
                position: Tween(
                        begin: const Offset(1.0, 0.0),
                        end: const Offset(0.0, 0.0))
                    .animate(animation),
                child: child,
              );
            },
          );
      if (useSlideAnimation) {
        return slideAnimation(child: gotoWidget, routeSettings: routeSettings);
      }
      if (defaultTargetPlatform == TargetPlatform.android) {
        return MaterialPageRoute(builder: (context) => gotoWidget);
      } else {
        return CupertinoPageRoute(builder: (context) => gotoWidget);
      }
    }

    switch (settings.name) {
      case '/welcome_screen':
        return goto(
          gotoWidget: const WelcomeScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/signin_screen':
        return goto(
          gotoWidget: const SignInScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );

      case '/reset_password_screen':
        return goto(
          gotoWidget: const ResetPasswordScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/otp_verification_screen':
        return goto(
          gotoWidget: const OtpVerificationScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/password_reset_input_screen':
        final bool? isAuthArea = settings.arguments as bool?;
        return goto(
          gotoWidget: PasswordResetInputScreen(
            isAuthArea: isAuthArea,
          ),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/reset_password_success_screen':
        final bool? isAuthArea = settings.arguments as bool?;
        return goto(
          gotoWidget: ResetPasswordSuccessScreen(
            isAuthArea: isAuthArea,
          ),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/signup_screen':
        return goto(
          gotoWidget: const SignUpScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/tell_us_about_yourself_screen':
        return goto(
          gotoWidget: const TellUsABoutYourSelfScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/allow_notification_screen':
        return goto(
          gotoWidget: const AllowNotificationScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/auth_homepage':
        return goto(
          gotoWidget: BlocProvider(
            create: (context) => MenuIndexCubit(),
            child: AllMenuWrapper(),
          ),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/search_screen':
        return goto(
          gotoWidget: const SearchScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/notifications_screen':
        return goto(
          gotoWidget: const NotificationsScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/comments_screen':
        return goto(
          gotoWidget: const CommentsScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/single_comment_widget':
        final CommentVm commentVm = settings.arguments as CommentVm;
        return goto(
          gotoWidget: SingleCommentWidget(
            commentVm: commentVm,
          ),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/recipe_detail_screen':
        return goto(
          gotoWidget: const RecipeDetailScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/categories_screen':
        return goto(
          gotoWidget: const CategoriesScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/search_food_screen':
        return goto(
          gotoWidget: const SearchFoodScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/toogle_food_list_with_chef_screen':
        return goto(
          gotoWidget: const ToogleFoodListWithChefScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/chef_detail_screen':
        return goto(
          gotoWidget: const ChefDetailScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/food_detail_screen':
        return goto(
          gotoWidget: const FoodDetailScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/edit_profile_screen':
        return goto(
          gotoWidget: const EditProfileScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/faq_screen':
        return goto(
          gotoWidget: const FaqScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/order_history_screen':
        return goto(
          gotoWidget: const OrderHistoryScreen(),
          routeSettings: settings,
          useSlideAnimation: true,
        );
      case '/order_history_detail':
        return goto(
          gotoWidget: const OrderHistoryDetail(),
          routeSettings: settings,
          useSlideAnimation: true,
        );

      default:
        return goto(
          gotoWidget: const SplashScreen(),
          routeSettings: settings,
        );
    }
  }
}
