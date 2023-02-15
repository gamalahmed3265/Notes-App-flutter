import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/app/app.dart';
import 'package:note_app/app/constant.dart';
import 'package:note_app/data/response/note_response.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/presentation/views/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteResponseAdapter());
  await Hive.openBox<NoteResponse>(Constant.nameHiveBox);
  runApp(const MyApp());
}
