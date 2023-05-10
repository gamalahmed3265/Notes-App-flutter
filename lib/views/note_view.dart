import 'package:flutter/material.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/resource/color_manager.dart';
import 'package:note_app/views/resource/icons_manager.dart';
import 'package:note_app/views/widget/add_note_model.dart';
import 'package:note_app/views/widget/custom_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomViewBody(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: ColorManager.primary,
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s16)),
                context: context,
                builder: (context) => const AddNoteModel());
          },
          child: IconsManager.add),
    );
  }
}