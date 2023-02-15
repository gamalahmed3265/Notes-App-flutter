import 'package:flutter/material.dart';
import 'package:note_app/presentation/views/resource/app_size.dart';

import '../resource/color_manager.dart';

class CustomIcon extends StatelessWidget {
  final Icon icon;
  final void Function()? ontap;
  const CustomIcon({Key? key, required this.icon, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: AppSize.s45,
        width: AppSize.s45,
        decoration: BoxDecoration(
            color: ColorManager.whitOpacity,
            borderRadius: BorderRadius.circular(AppSize.s16)),
        child: icon,
      ),
    );
  }
}
