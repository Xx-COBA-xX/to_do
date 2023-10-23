// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/custom_drawer.dart';
import 'widgets/home_view_body.dart';
import 'widgets/my_floating_action_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: HomeViewBody(),
        floatingActionButton: MyFloatingActionButton(),
        drawer: CustomDrawer(),
      ),
    );
  }
}

