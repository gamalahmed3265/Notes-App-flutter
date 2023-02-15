abstract class DeleteItemNotesState {}

class DeleteItemNotesStateInit extends DeleteItemNotesState {}

class DeleteItemNotesSuccess extends DeleteItemNotesState {}

class DeleteItemNotesEmpty extends DeleteItemNotesState {}

class DeleteItemNotesStateLoading extends DeleteItemNotesState {}

class DeleteItemNotesFaliure extends DeleteItemNotesState {
  final String message;

  DeleteItemNotesFaliure(this.message);
}
