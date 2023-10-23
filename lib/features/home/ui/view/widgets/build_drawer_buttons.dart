import 'package:flutter/material.dart';

import '../../../../../core/widgets/build_title_wit_icon.dart';
import '../../../data/model/drawer_model.dart';

class BuildDrawerButtons extends StatelessWidget {
  const BuildDrawerButtons({
    super.key,
    required this.drawerButtons,
  });

  final List<DrawerModel> drawerButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          title: BuildTitleWIthIcon(
            icon: drawerButtons[index].icon,
            title: drawerButtons[index].title,
          ),
        );
      },
      separatorBuilder: (context, _) {
        return const SizedBox(
          height: 20,
        );
      },
      itemCount: drawerButtons.length,
    );
  }
}
