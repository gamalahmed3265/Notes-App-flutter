import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/app/constant.dart';
import 'package:note_app/data/response/note_response.dart';
import 'package:note_app/domain/model/note_data_model.dart';
import 'package:note_app/presentation/cubits/delete_item_note/state.dart';

class DeleteItemNotesCubite extends Cubit<DeleteItemNotesState> {
  DeleteItemNotesCubite() : super(DeleteItemNotesStateInit());

  List<NoteDataModel> listnoteDataModel = [];
  editNote(NoteDataModel noteDataModel) async {
    emit(DeleteItemNotesStateLoading());
    try {
      var noteBox = Hive.box<NoteResponse>(Constant.nameHiveBox);

      NoteResponse noteResponse = NoteResponse(
          title: noteDataModel.noteName,
          subTitle: noteDataModel.description,
          date: noteDataModel.date,
          color: noteDataModel.colorBacground);
      noteBox.get(noteResponse);
      noteBox.delete(noteResponse);
      // noteResponse.save();

      emit(DeleteItemNotesSuccess());
    } catch (e) {
      emit(DeleteItemNotesFaliure(e.toString()));
    }
  }
}
