import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/app/constant.dart';
import 'package:note_app/data/response/note_response.dart';
import 'package:note_app/domain/model/note_data_model.dart';
import 'package:note_app/presentation/cubits/add_note/state.dart';

class AddNoteCubits extends Cubit<AddNoteState> {
  AddNoteCubits() : super(AddNoteInit());

  addNote(NoteDataModel noteDataModel) async {
    print("AddNoteLoading---------");
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteResponse>(Constant.nameHiveBox);

      NoteResponse noteResponse = NoteResponse(
          title: noteDataModel.getNoteName(),
          subTitle: noteDataModel.getDescription(),
          date: noteDataModel.getDate(),
          color: noteDataModel.getColor());

      await noteBox.add(noteResponse);

      emit(AddNoteSuccess());
      print("AddNoteSuccess----yyyyy---");
    } catch (e) {
      print("AddNoteFailure--------");
      emit(AddNoteFailure(e.toString()));
    }
  }
}
