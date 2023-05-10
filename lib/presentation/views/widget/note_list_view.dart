import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/domain/model/note_data_model.dart';
import 'package:note_app/presentation/cubits/get_notes/cubits.dart';
import 'package:note_app/presentation/cubits/get_notes/state.dart';
import 'package:note_app/presentation/views/resource/app_size.dart';
import 'package:note_app/presentation/views/widget/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubite, GetNotesState>(
        builder: (context, state) {
      List<NoteDataModel> listNote =
          BlocProvider.of<GetNotesCubite>(context).listnoteDataModel;
      return ListView.separated(
          itemBuilder: (context, index) => const SizedBox(height: AppSize.s16),
          separatorBuilder: (context, index) =>
              NoteItem(noteDataModel: listNote[index]),
          itemCount: listNote.length);
    });
  }
}
