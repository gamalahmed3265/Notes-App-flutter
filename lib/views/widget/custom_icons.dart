import 'package:flutter/material.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/resource/icons_manager.dart';

import '../resource/color_manager.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s45,
      width: AppSize.s45,
      decoration: BoxDecoration(
          color: ColorManager.whitOpacity,
          borderRadius: BorderRadius.circular(AppSize.s16)),
      child: IconsManager.search,
    );
  }
}
