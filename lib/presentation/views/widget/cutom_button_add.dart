import 'package:flutter/material.dart';
import 'package:note_app/presentation/views/resource/app_size.dart';
import 'package:note_app/presentation/views/resource/color_manager.dart';
import 'package:note_app/presentation/views/resource/string_manager.dart';
import 'package:note_app/presentation/views/resource/theme_manager.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({Key? key, this.onTap, this.isLoading = false})
      : super(key: key);
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: AppSize.s55,
        decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.circular(AppSize.s16)),
        child: Center(
            child: isLoading
                ? SizedBox(
                    width: AppSize.s24,
                    height: AppSize.s24,
                    child: CircularProgressIndicator(
                      color: ColorManager.black,
                    ),
                  )
                : Text(
                    StringManager.add,
                    style: ThemeManager.textAdd,
                  )),
      ),
    );
  }
}
