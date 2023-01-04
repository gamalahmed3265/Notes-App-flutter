import 'package:flutter/material.dart';
import 'package:note_app/data/local/data_note.dart';
import 'package:note_app/domain/model/note_data_model.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/widget/custom_note_item.dart';
import 'package:note_app/views/widget/custom_app_bar.dart';

class CustomViewBody extends StatelessWidget {
  const CustomViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
      child: Column(
        children: [
          const SizedBox(
            height: AppSize.s50,
          ),
          const CustomAppBar(),
          const SizedBox(height: AppSize.s16),
          NoteItem(noteDataModel: listNote[0]),
          const SizedBox(height: AppSize.s16),
          NoteItem(noteDataModel: listNote[1]),
          const SizedBox(height: AppSize.s16),
          NoteItem(noteDataModel: listNote[2])
        ],
      ),
    );
  }
}
