import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/app/constant.dart';
import 'package:note_app/data/response/note_response.dart';
import 'package:note_app/presentation/cubits/delete_all/state.dart';

class DeleteAllNoteCubits extends Cubit<DeleteAllNoteState> {
  DeleteAllNoteCubits() : super(DeleteAllNoteInit());

  deleteAlltNotes() async {
    emit(DeleteAllNoteLoading());
    try {
      var noteBox = Hive.box<NoteResponse>(Constant.nameHiveBox);
      noteBox.clear();
      emit(DeleteAllNoteSuccess());
    } catch (e) {
      emit(DeleteAllNoteFailure(e.toString()));
    }
  }
}
