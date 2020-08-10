import 'package:flutter/material.dart';

class IconChoice {
  const IconChoice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<IconChoice> icon_choices = const <IconChoice>[
  const IconChoice(title: 'back', icon: Icons.arrow_back),
  const IconChoice(title: 'home', icon: Icons.home),
  const IconChoice(title: 'add', icon: Icons.add),
  const IconChoice(title: 'trash', icon: Icons.delete),
  const IconChoice(title: 'save', icon: Icons.file_download),
  const IconChoice(title: 'reset', icon: Icons.settings_backup_restore),
  const IconChoice(title: 'next', icon: Icons.arrow_forward),
];
