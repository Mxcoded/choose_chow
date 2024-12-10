import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/Utilities/text_utility.dart';
import 'package:choose_chow/routes.dart';
import 'package:choose_chow/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (p0, p1, p2) => MaterialApp(
        title: TextUtility.appName,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AllRoutes.routes,
        navigatorObservers: [FlutterSmartDialog.observer],
        builder: FlutterSmartDialog.init(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: ColorUtility.primaryColor,
          ),
          useMaterial3: true,
          cardTheme: CardTheme.of(context).copyWith(
              color: Colors.white, surfaceTintColor: Colors.transparent),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorUtility.primaryColor,
              padding: EdgeInsets.symmetric(
                vertical: 2.h,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  2.w,
                ),
                side: const BorderSide(
                  color: ColorUtility.hexadecimalGrayColor,
                  width: 0.1,
                ),
              ),
            ),
          ),
          appBarTheme: AppBarTheme.of(context).copyWith(
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.white,
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
