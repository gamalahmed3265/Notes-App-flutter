import 'package:flutter/material.dart';
import 'package:note_app/presentation/views/resource/app_size.dart';
import 'package:note_app/presentation/views/resource/string_manager.dart';
import 'package:note_app/presentation/views/widget/custom_text_field.dart';
import 'package:note_app/presentation/views/widget/cutom_button_add.dart';

class AddNoteModel extends StatelessWidget {
  const AddNoteModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s16),
      child: ListView(
        children: [
          const SizedBox(
            height: AppSize.s16,
          ),
          CustomTextField(
            text: StringManager.title,
          ),
          const SizedBox(
            height: AppSize.s16,
          ),
          CustomTextField(
            text: StringManager.description,
            maxLines: AppSize.s5,
          ),
          const SizedBox(
            height: AppSize.s32,
          ),
          const CustomAddButton()
        ],
      ),
    );
  }
}
