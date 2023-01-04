import 'package:flutter/material.dart';
import 'package:note_app/views/resource/icons_manager.dart';
import 'package:note_app/views/resource/string_manager.dart';
import 'package:note_app/views/widget/custom_app_bar.dart';
import 'package:note_app/views/widget/edit_body.dart';

class CustomEditNote extends StatelessWidget {
  const CustomEditNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBar(
            text: StringManager.edit, icon: IconsManager.edit),
      ),
      body: const DditbodyNote(),
    );
  }
}
