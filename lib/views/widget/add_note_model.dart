import 'package:flutter/material.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/resource/string_manager.dart';
import 'package:note_app/views/widget/custom_text_field.dart';

class AddNoteModel extends StatelessWidget {
  const AddNoteModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s16),
      child: Column(
        children: [
          const SizedBox(
            height: AppSize.s32,
          ),
          CustomTextField(
            text: StringManager.title,
          ),
          const SizedBox(
            height: AppSize.s32,
          ),
          CustomTextField(text: StringManager.description),
        ],
      ),
    );
  }
}
