// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:to_do_llist_app/core/utils/assets.dart';
import 'package:to_do_llist_app/core/utils/styles.dart';
import 'package:to_do_llist_app/features/home/data/model/drawer_model.dart';
import 'package:to_do_llist_app/features/home/ui/view_model/drawer/drawer_view_model.dart';

import 'build_drawer_buttons.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final List<DrawerModel> drawerButtons = DrawerButtons.drawerButtons;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage(Assets.accuentImage),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "7aiDER",
                  style: Style.textStyle24,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "haider.new.it@gmail.com",
                  style: Style.textStyle20.copyWith(fontSize: 18),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 25),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: BuildDrawerButtons(drawerButtons: drawerButtons),
          )
        ],
      ),
    );
  }
}
