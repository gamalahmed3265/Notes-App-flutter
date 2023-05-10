import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note_data_model.dart';

List<NoteDataModel> listNote = [
  NoteDataModel(
      noteName: "noteName1",
      description: "description1",
      date: DateTime.now(),
      colorBacground: Colors.amber),
  NoteDataModel(
      noteName: "noteName2",
      description: "description2",
      date: DateTime.now(),
      colorBacground: Colors.cyanAccent),
  NoteDataModel(
      noteName: "noteName3",
      description: "description3",
      date: DateTime.now(),
      colorBacground: Colors.teal),
];
