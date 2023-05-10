import 'package:hive/hive.dart';

part 'note_response.g.dart';

@HiveType(typeId: 0)
class NoteResponse extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

  NoteResponse({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
