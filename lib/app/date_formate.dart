import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class ConvertesFunctions {
  ConvertesFunctions();

  String dateNoteYMMD(DateTime date) {
    String formattedDate = DateFormat.yMMMd().format(date);
    return formattedDate;
  }

  int colorNote(Color color) {
    return color.value;
  }
}
