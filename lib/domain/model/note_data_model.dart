import 'package:flutter/cupertino.dart';
import 'package:note_app/domain/model/date_formate.dart';
import 'package:note_app/presentation/views/resource/color_manager.dart';

class NoteDataModel {
  String noteName;
  String description;
  DateTime date;
  Color colorBacground;

  NoteDataModel(
      {required this.noteName,
      required this.description,
      required this.date,
      this.colorBacground = ColorManager.white});
  String getNoteName() {
    return noteName;
  }

  String getDescription() {
    return description;
  }

  int getColor() {
    return int.parse(colorBacground.toString());
  }

  String getDateAfterForamte() {
    return DateFormateWithYMMD(now: date).dateNote();
  }

  ////////// sets
  setNoteName(String noteName) {
    this.noteName = noteName;
  }

  setDescription(String description) {
    this.description = description;
  }

  setDate(String date) {
    this.date = DateTime.parse(date);
  }

  setColor(int colorBacground) {
    this.colorBacground = Color(colorBacground);
  }
}
