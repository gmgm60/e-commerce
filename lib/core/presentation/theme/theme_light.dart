import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyText1)
/// body2        14.0  regular  0.25  (bodyText2)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5
///
final themeLight = ThemeData(
  primarySwatch: appMainColor,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    color: Colors.white,
    titleTextStyle: TextStyle(
        fontSize: 18, color: appDarkBlue, fontWeight: FontWeight.bold),
    iconTheme: IconThemeData(color: Colors.black54),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  textTheme: TextTheme(
    // size 18, orange(login & register pages)
    headline1: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: appMainColor,
    ),
    // size 16, orange
    subtitle1: TextStyle(color: appMainColor),
    // size 24, blue
    headline5: const TextStyle(color: appBlue),
    // size 20, blue
    headline6: const TextStyle(color: appBlue),
    // size 16, darkBlue
    bodyText1: const TextStyle(color: appDarkBlue),
    // size 14 ,grey
    bodyText2: const TextStyle(color: appGrey),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(width: 2)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.grey, width: 2)),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.red, width: 2)),
  ),
  dialogTheme: DialogTheme(
    elevation: 8,
    titleTextStyle: TextStyle(
        color: appMainColor, fontSize: 18, fontWeight: FontWeight.bold),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.white,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.resolveWith((states) {
        return RoundedRectangleBorder(
            side: BorderSide(width: 4, color: appMainColor),
            borderRadius: BorderRadius.circular(8));
      }),
    ),
  ),
  cardTheme: CardTheme(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 16,
      color: Colors.white),
  bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      unselectedIconTheme: const IconThemeData(color: appGrey),
      selectedItemColor: appDarkBlue,
  elevation: 4,
  backgroundColor: appGrey.withOpacity(.8),),
);
