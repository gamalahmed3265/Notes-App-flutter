import 'package:flutter/cupertino.dart';
import 'package:note_app/domain/model/date_formate.dart';
import 'package:note_app/views/resource/color_manager.dart';

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

  Color getColor() {
    return colorBacground;
  }

  String getDateAfterForamte() {
    return DateFormateWithYMMD(now: date).dateNote();
  }
}
