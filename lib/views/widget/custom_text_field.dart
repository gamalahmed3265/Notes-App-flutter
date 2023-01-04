import 'package:flutter/material.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/resource/color_manager.dart';
import 'package:note_app/views/resource/theme_manager.dart';

class CustomTextField extends StatelessWidget {
  String text;
  int maxLines;
  CustomTextField({Key? key, required this.text, this.maxLines = AppSize.s1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ColorManager.primary,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: text,
          hintStyle: ThemeManager.textPrimary,
          border: outBorder(),
          focusColor: ColorManager.primary,
          enabledBorder: outBorder(ColorManager.primary)),
    );
  }

  OutlineInputBorder outBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        borderSide: BorderSide(color: color ?? ColorManager.white));
  }
}
