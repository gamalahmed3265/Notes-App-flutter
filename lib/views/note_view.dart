import 'package:flutter/material.dart';
import 'package:note_app/views/resource/icons_manager.dart';
import 'package:note_app/views/widget/custom_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomViewBody(),
      floatingActionButton: FloatingActionButton(
          child: IconsManager.add,
          onPressed: () {
            print("add");
          }),
    );
  }
}
