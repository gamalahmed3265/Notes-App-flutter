import 'package:flutter/material.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/resource/color_manager.dart';
import 'package:note_app/views/resource/fonts_manager.dart';

class ThemeManager {
  static TextStyle textTitle =
      TextStyle(color: ColorManager.black, fontSize: AppSize.s26);
  static TextStyle textOpacity = TextStyle(
      color: ColorManager.black.withOpacity(AppSize.s0_5),
      fontSize: AppSize.s20);
  //
  static ThemeData lightManager = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    fontFamily: FontsManager.fontsName,
  );
  static ThemeData darkManager = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    fontFamily: FontsManager.fontsName,
  );
}
