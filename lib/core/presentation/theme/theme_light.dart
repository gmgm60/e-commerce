import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final themeLight = ThemeData(
  primarySwatch: appMainColor,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    color: Colors.white,
    titleTextStyle: TextStyle(
        fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold),
    iconTheme: IconThemeData(color: Colors.black54),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: appMainColor,
      ),
      headline5: const TextStyle(color: Colors.blue),
      headline6: const TextStyle(color: Colors.blue),
      subtitle1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: appMainColor,
      ),
      bodyText1: const TextStyle(
        color: Colors.black45,
      ),
      bodyText2: TextStyle(
        color: appMainColor,
      )),
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
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    unselectedIconTheme: IconThemeData(
      color: Colors.grey
    ),
    selectedItemColor: Colors.blue
  )
);
