import 'package:flutter/material.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/resource/color_manager.dart';
import 'package:note_app/views/resource/string_manager.dart';
import 'package:note_app/views/resource/theme_manager.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: AppSize.s55,
      decoration: BoxDecoration(
          color: ColorManager.primary,
          borderRadius: BorderRadius.circular(AppSize.s16)),
      child: Center(
          child: Text(
        StringManager.add,
        style: ThemeManager.textAdd,
      )),
    );
  }
}
