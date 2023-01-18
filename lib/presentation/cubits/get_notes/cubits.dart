import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/app/constant.dart';
import 'package:note_app/data/response/note_response.dart';
import 'package:note_app/domain/model/note_data_model.dart';
import 'package:note_app/presentation/cubits/get_notes/state.dart';

class GetNotesCubite extends Cubit<GetNotesState> {
  GetNotesCubite() : super(GetNotesStateInit());

  getNots() {
    emit(GetNotesStateLoading());
    try {
      var noteBox = Hive.box<NoteResponse>(Constant.nameHiveBox);
      List<NoteResponse> listNoteResponse = noteBox.values.toList();

      List<NoteDataModel> listNote = [];

      if (listNoteResponse.isEmpty) {
        emit(GetNotesEmpty());
      } else {
        for (int i = 0; i < listNoteResponse.length; i++) {
          listNote[i].setNoteName(listNoteResponse[i].title);
          listNote[i].setDescription(listNoteResponse[i].subTitle);
          listNote[i].setDate(listNoteResponse[i].date);
          listNote[i].setColor(listNoteResponse[i].color);
        }
      }
    } catch (e) {
      emit(GetNotesFaliure(e.toString()));
    }
  }
}
