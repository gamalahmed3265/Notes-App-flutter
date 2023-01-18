import 'package:flutter/material.dart';
import 'package:note_app/presentation/views/resource/app_size.dart';
import 'package:note_app/presentation/views/widget/custom_icons.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final Icon icon;
  final void Function()? onPressed;
  const CustomAppBar(
      {Key? key, required this.text, required this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: AppSize.s28),
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
          ontap: onPressed,
        )
      ],
    );
  }
}
