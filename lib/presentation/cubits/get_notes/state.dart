abstract class GetNotesState {}

class GetNotesStateInit extends GetNotesState {}

class GetNotesSuccess extends GetNotesState {}

class GetNotesEmpty extends GetNotesState {}

class GetNotesStateLoading extends GetNotesState {}

class GetNotesFaliure extends GetNotesState {
  final String message;

  GetNotesFaliure(this.message);
}
