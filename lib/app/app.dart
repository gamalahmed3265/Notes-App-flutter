import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/presentation/cubits/edit_note/cubits.dart';
import 'package:note_app/presentation/cubits/get_notes/cubits.dart';
import 'package:note_app/presentation/views/resource/router_manager.dart';
import 'package:note_app/presentation/views/resource/string_manager.dart';
import 'package:note_app/presentation/views/resource/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetNotesCubite()),
        BlocProvider(create: (context) => EditNoteCubits()),
      ],
      child: MaterialApp(
        title: StringManager.note,
        themeMode: ThemeMode.dark,
        theme: ThemeManager.lightManager,
        darkTheme: ThemeManager.darkManager,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouterGeneator.getRoute,
        initialRoute: RouterManager.home,
      ),
    );
  }
}
