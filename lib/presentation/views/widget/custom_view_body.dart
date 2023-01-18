import 'package:flutter/material.dart';
import 'package:note_app/presentation/views/resource/app_size.dart';
import 'package:note_app/presentation/views/resource/icons_manager.dart';
import 'package:note_app/presentation/views/resource/string_manager.dart';
import 'package:note_app/presentation/views/widget/custom_app_bar.dart';
import 'package:note_app/presentation/views/widget/note_list_view.dart';

class CustomViewBody extends StatelessWidget {
  const CustomViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
      child: Column(
        children: const [
          SizedBox(
            height: AppSize.s50,
          ),
          CustomAppBar(text: StringManager.note, icon: IconsManager.search),
          Expanded(child: NoteListView())
        ],
      ),
    );
  }
}
