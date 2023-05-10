import 'package:intl/intl.dart';

class DateFormateWithYMMD {
  DateTime now;

  DateFormateWithYMMD({required this.now});
  String dateNote() {
    String formattedDate = DateFormat.yMMMd().format(now);
    return formattedDate;
  }
}
