import 'package:flutter/material.dart';
import 'package:to_do_llist_app/core/utils/styles.dart';

import '../../../../../core/widgets/custom_icon_button.dart';

class BuildNewSectionTitle extends StatelessWidget {
  const BuildNewSectionTitle({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Style.textStyle20.copyWith(fontWeight: FontWeight.w600),
        ),
        CustomIconButton(
          icon: icon,
          size: 25,
          onPressed: () {},
        )
      ],
    );
  }
}
