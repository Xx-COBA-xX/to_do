import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/build_title_wit_icon.dart';

class BuildCategoryItem extends StatelessWidget {
  const BuildCategoryItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.planNo,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final int planNo;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.07),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildTitleWIthIcon(icon: icon, title: title),
            const Spacer(),
            Text("$planNo Plan Remainning"),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "Go to Paln",
                    style: Style.textStyle16.copyWith(color: kPrimaryColor),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: kPrimaryColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

