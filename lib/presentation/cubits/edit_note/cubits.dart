import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/app/constant.dart';
import 'package:note_app/data/response/note_response.dart';
import 'package:note_app/domain/model/note_data_model.dart';
import 'package:note_app/presentation/cubits/edit_note/state.dart';

class EditNoteCubits extends Cubit<EditNoteState> {
  EditNoteCubits() : super(EditNoteInit());

  editNote(NoteDataModel noteDataModel) async {
    print("EditNoteLoading---------");
    emit(EditNoteLoading());
    try {
      var noteBox = Hive.box<NoteResponse>(Constant.nameHiveBox);

      NoteResponse noteResponse = NoteResponse(
          title: noteDataModel.noteName,
          subTitle: noteDataModel.description,
          date: noteDataModel.date,
          color: noteDataModel.colorBacground);

      noteBox.get(noteResponse);
      noteResponse.save();

      emit(EditNoteSuccess());
      print("EditNoteSuccess----yyyyy---");
    } catch (e) {
      print("EditNoteFailure--------");
      emit(EditNoteFailure(e.toString()));
    }
  }
}
