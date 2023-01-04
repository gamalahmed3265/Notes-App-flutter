import 'package:flutter/material.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/resource/string_manager.dart';
import 'package:note_app/views/widget/custom_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          StringManager.note,
          style: TextStyle(fontSize: AppSize.s28),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
