abstract class EditNoteState {}

class EditNoteInit extends EditNoteState {}

class EditNoteSuccess extends EditNoteState {}

class EditNoteLoading extends EditNoteState {}

class EditNoteFailure extends EditNoteState {
  final String message;
  EditNoteFailure(this.message);
}
