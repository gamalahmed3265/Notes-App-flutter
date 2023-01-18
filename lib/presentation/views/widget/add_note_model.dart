import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/presentation/cubits/add_note/cubits.dart';
import 'package:note_app/presentation/cubits/add_note/state.dart';
import 'package:note_app/presentation/cubits/get_notes/cubits.dart';
import 'package:note_app/presentation/views/resource/app_size.dart';
import 'package:note_app/presentation/views/widget/add_note.form.dart';

class AddNoteModel extends StatefulWidget {
  const AddNoteModel({Key? key}) : super(key: key);

  @override
  State<AddNoteModel> createState() => _AddNoteModelState();
}

class _AddNoteModelState extends State<AddNoteModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(AppSize.s16),
        child: BlocProvider(
          create: (context) => AddNoteCubits(),
          child: BlocConsumer<AddNoteCubits, AddNoteState>(
              listener: (context, state) {
                if (state is AddNoteFailure) {}
                if (state is AddNoteSuccess) {
                  BlocProvider.of<GetNotesCubite>(context).getNots();
                  Navigator.pop(context);
                }
              },
              builder: (context, state) => AbsorbPointer(
                    absorbing: state is AddNoteLoading ? true : false,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: const SingleChildScrollView(
                        child: AddNoteForm(),
                      ),
                    ),
                  )),
        ));
  }
}
