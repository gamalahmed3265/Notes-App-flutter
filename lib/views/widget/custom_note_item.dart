import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note_data_model.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/resource/color_manager.dart';
import 'package:note_app/views/resource/icons_manager.dart';
import 'package:note_app/views/resource/theme_manager.dart';

class NoteItem extends StatelessWidget {
  NoteDataModel noteDataModel;
  NoteItem({Key? key, required this.noteDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: AppSize.s8, left: AppSize.s8, bottom: AppSize.s8),
      decoration: BoxDecoration(
        color: noteDataModel.colorBacground,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              noteDataModel.getNoteName(),
              style: ThemeManager.textTitle,
            ),
            subtitle: Text(
              noteDataModel.getDescription(),
              style: ThemeManager.textOpacity,
            ),
            trailing: IconButton(
              onPressed: () {
                print(noteDataModel.getDateAfterForamte());
              },
              icon: IconsManager.delete,
              color: ColorManager.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppSize.s26),
            child: Text(
              noteDataModel.getDateAfterForamte(),
              style: ThemeManager.textOpacity,
            ),
          )
        ],
      ),
    );
  }
}
