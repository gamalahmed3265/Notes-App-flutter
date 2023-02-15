abstract class DeleteAllNoteState {}

class DeleteAllNoteInit extends DeleteAllNoteState {}

class DeleteAllNoteSuccess extends DeleteAllNoteState {}

class DeleteAllNoteLoading extends DeleteAllNoteState {}

class DeleteAllNoteFailure extends DeleteAllNoteState {
  final String message;
  DeleteAllNoteFailure(this.message);
}
