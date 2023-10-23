import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class BuildTitleWIthIcon extends StatelessWidget {
  const BuildTitleWIthIcon({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: kPrimaryColor,
          child: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          title,
          style:
              Style.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
