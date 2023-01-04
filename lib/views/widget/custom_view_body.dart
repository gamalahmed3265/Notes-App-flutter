import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_app_bar.dart';

class CustomViewBody extends StatelessWidget {
  const CustomViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CustomAppBar(), CardNote()],
    );
  }
}

class CardNote extends StatelessWidget {
  const CardNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text("dfmdf"),
    );
  }
}
