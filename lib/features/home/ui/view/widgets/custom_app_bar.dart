import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_icon_button.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 70,
      // backgroundColor: kPrimaryColor,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          const Text(
            'To Day',
            style: Style.textStyle16,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            DateFormat('MMM d,yyyy').format(DateTime.now()),
            style: Style.textStyle20.copyWith(
                fontWeight: FontWeight.w600,
                color: kTextColor.withOpacity(0.8)),
          ),
        ],
      ),
      actions: [
        CustomIconButton(
          icon: CupertinoIcons.search,
          size: 30,
          onPressed: () {},
        ),
        CustomIconButton(
          icon: FontAwesomeIcons.bell,
          size: 23,
          onPressed: () {},
        ),
        const SizedBox(
          width: 5,
        )
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70
  );
}
