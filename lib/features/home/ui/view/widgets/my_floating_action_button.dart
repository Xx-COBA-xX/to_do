// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/colors.dart';
import 'custom_bottom_sheet.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => CustomBottomSheet(
            size: size,
          ),
          backgroundColor: Colors.white,
          isScrollControlled: true,
        );
      },
      backgroundColor: kPrimaryColor,
      shape: const CircleBorder(),
      child: const Icon(
        FontAwesomeIcons.add,
        color: Colors.white,
      ),
    );
  }
}
