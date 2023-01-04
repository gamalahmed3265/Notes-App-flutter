import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomViewBody());
  }
}
