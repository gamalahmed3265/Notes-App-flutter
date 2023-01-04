import 'package:flutter/material.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/widget/custom.card_note.dart';
import 'package:note_app/views/widget/custom_app_bar.dart';

class CustomViewBody extends StatelessWidget {
  const CustomViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
      child: Column(
        children: const [CustomAppBar(), CardNote()],
      ),
    );
  }
}
