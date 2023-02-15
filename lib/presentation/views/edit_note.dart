import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/data/response/note_response.dart';
import 'package:note_app/domain/model/note_data_model.dart';
import 'package:note_app/presentation/cubits/edit_note/cubits.dart';
import 'package:note_app/presentation/cubits/get_notes/cubits.dart';
import 'package:note_app/presentation/views/resource/app_size.dart';
import 'package:note_app/presentation/views/resource/icons_manager.dart';
import 'package:note_app/presentation/views/resource/string_manager.dart';
import 'package:note_app/presentation/views/widget/custom_app_bar.dart';
import 'package:note_app/presentation/views/widget/custom_text_field.dart';

class CustomEditNote extends StatefulWidget {
  final NoteDataModel noteDataModel;
  const CustomEditNote({Key? key, required this.noteDataModel})
      : super(key: key);

  @override
  State<CustomEditNote> createState() => _CustomEditNoteState();
}

class _CustomEditNoteState extends State<CustomEditNote> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
        child: Column(
          children: [
            CustomAppBar(
              text: StringManager.edit,
              icon: IconsManager.edit,
              onPressed: () {
                BlocProvider.of<EditNoteCubits>(context)
                    .editNote(widget.noteDataModel);
                BlocProvider.of<GetNotesCubite>(context).getNots();
                Navigator.pop(context);
              },
            ),
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
          ],
        ),
      ),
    );
  }
}
