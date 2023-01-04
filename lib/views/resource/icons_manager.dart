import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/resource/app_size.dart';

class IconsManager {
  static const Icon search = Icon(Icons.search);
  static const Icon delete = Icon(
    FontAwesomeIcons.trash,
    size: AppSize.s26,
  );
}
