import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/app/date_formate.dart';
import 'package:note_app/domain/model/note_data_model.dart';
import 'package:note_app/presentation/cubits/add_note/cubits.dart';
import 'package:note_app/presentation/cubits/add_note/state.dart';
import 'package:note_app/presentation/views/resource/app_size.dart';
import 'package:note_app/presentation/views/resource/color_manager.dart';
import 'package:note_app/presentation/views/resource/string_manager.dart';
import 'package:note_app/presentation/views/widget/custom_text_field.dart';
import 'package:note_app/presentation/views/widget/cutom_button_add.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: AppSize.s16,
          ),
          CustomTextField(
            text: StringManager.title,
            onChange: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: AppSize.s16,
          ),
          CustomTextField(
            text: StringManager.description,
            maxLines: AppSize.s5,
            onSave: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: AppSize.s32,
          ),
          BlocBuilder<AddNoteCubits, AddNoteState>(builder: (context, state) {
            return CustomAddButton(
              isLoading: state is AddNoteLoading ? true : false,
              onTap: () {
                print("ddd");
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  ConvertesFunctions convert = ConvertesFunctions();
                  var date = convert.dateNoteYMMD(DateTime.now());

                  NoteDataModel noteDataModel = NoteDataModel(
                      noteName: title!,
                      description: subTitle!,
                      date: date,
                      colorBacground: convert.colorNote(ColorManager.white));

                  BlocProvider.of<AddNoteCubits>(context)
                      .addNote(noteDataModel);
                  // print(noteDataModel.toStringValues());
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
          }),
          const SizedBox(
            height: AppSize.s32,
          ),
        ],
      ),
    );
  }
}
