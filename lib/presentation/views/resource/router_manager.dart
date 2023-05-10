import 'package:flutter/material.dart';
import 'package:note_app/presentation/views/edit_note.dart';
import 'package:note_app/presentation/views/note_view.dart';
import 'package:note_app/presentation/views/resource/string_manager.dart';

class RouterManager {
  static const String home = "/";
  static const String edit = "/edit";
}

class RouterGeneator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouterManager.home:
        return MaterialPageRoute(builder: (_) => const NoteView());
      // case RouterManager.edit:
      //   return MaterialPageRoute(builder: (_) => const CustomEditNote());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(StringManager.noRouteFound),
              ),
              body: const Center(child: Text(StringManager.noRouteFound)),
            ));
  }
}
