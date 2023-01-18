import 'package:flutter/material.dart';
import 'package:note_app/presentation/views/resource/app_size.dart';
import 'package:note_app/presentation/views/resource/color_manager.dart';
import 'package:note_app/presentation/views/resource/string_manager.dart';
import 'package:note_app/presentation/views/resource/theme_manager.dart';

class CustomTextField extends StatelessWidget {
  String text;
  int maxLines;
  CustomTextField(
      {Key? key,
      required this.text,
      this.maxLines = AppSize.s1,
      this.onChange,
      this.onSave})
      : super(key: key);

  final Function(String?)? onChange;
  final void Function(String?)? onSave;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorManager.primary,
      maxLines: maxLines,
      onChanged: onChange,
      onSaved: onSave,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return StringManager.fieldisRequried;
        } else {
          return null;
        }
      },
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
