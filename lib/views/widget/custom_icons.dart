import 'package:flutter/material.dart';
import 'package:note_app/views/resource/app_size.dart';

import '../resource/color_manager.dart';

class CustomIconAppBar extends StatelessWidget {
  final Icon icon;
  const CustomIconAppBar({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s45,
      width: AppSize.s45,
      decoration: BoxDecoration(
          color: ColorManager.whitOpacity,
          borderRadius: BorderRadius.circular(AppSize.s16)),
      child: icon,
    );
  }
}
