import 'package:flutter/material.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/widget/custom_icons.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final Icon icon;
  const CustomAppBar({Key? key, required this.text, required this.icon})
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
        CustomIconAppBar(icon: icon)
      ],
    );
  }
}
