import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_llist_app/features/home/data/model/drawer_model.dart';

class DrawerButtons {
  static List<DrawerModel> drawerButtons = [
    DrawerModel(title: "Today ", icon: CupertinoIcons.time),
    DrawerModel(title: "Calender ", icon: FontAwesomeIcons.calendar),
    DrawerModel(title: "Settings ", icon: Icons.settings_outlined),
    DrawerModel(title: "Share ", icon: Icons.share_outlined),
  ];
}
