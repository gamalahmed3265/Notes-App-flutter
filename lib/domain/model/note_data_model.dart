class NoteDataModel {
  String noteName;
  String description;
  String date;
  int colorBacground;

  NoteDataModel(
      {required this.noteName,
      required this.description,
      required this.date,
      required this.colorBacground});
  String getNoteName() {
    return noteName;
  }

  String getDescription() {
    return description;
  }

  int getColor() {
    return colorBacground;
  }

  String getDate() {
    return date;
  }

  ////////// sets
  setNoteName(String noteName) {
    this.noteName = noteName;
  }

  setDescription(String description) {
    this.description = description;
  }

  setDate(String date) {
    this.date = date;
  }

  setcolorBacground(int colorBacground) {
    this.colorBacground = colorBacground;
  }

  String toStringValues() {
    return "noteName $noteName\n description $description\n date $date\n colorBacground $colorBacground\n";
  }
}
