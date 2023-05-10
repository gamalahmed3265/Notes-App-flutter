import 'package:flutter/material.dart';
import 'package:note_app/data/local/data_note.dart';
import 'package:note_app/views/resource/app_size.dart';
import 'package:note_app/views/widget/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const SizedBox(height: AppSize.s16),
        separatorBuilder: (context, index) =>
            NoteItem(noteDataModel: listNote[index]),
        itemCount: listNote.length);
  }
}
