import 'package:flutter/material.dart';
import 'package:note_app/views/note_view.dart';
import 'package:note_app/views/resource/router_manager.dart';
import 'package:note_app/views/resource/string_manager.dart';
import 'package:note_app/views/resource/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringManager.note,
      themeMode: ThemeMode.dark,
      theme: ThemeManager.lightManager,
      darkTheme: ThemeManager.darkManager,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterGeneator.getRoute,
      initialRoute: RouterManager.home,
    );
  }
}
