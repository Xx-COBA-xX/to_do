import 'package:flutter/material.dart';
import 'package:to_do_llist_app/core/utils/colors.dart';

import '../../../../../core/utils/styles.dart';

class BuildTextFiled extends StatelessWidget {
  const BuildTextFiled({
    Key? key,
    required this.maxLine,
    required this.height,
    required this.hintText,
    this.icon,
    this.onTap,
  }) : super(key: key);
  final int maxLine;
  final double height;
  final String hintText;
  final IconData? icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        color: kFiledColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      height: MediaQuery.of(context).size.height * height,
      child: Center(
        child: TextField(
          onTap: onTap,
          maxLines: maxLine,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              suffixIcon: icon != null ? Icon(icon) : null,
              hintStyle: Style.textStyle16.copyWith(color: Colors.black45)),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: MediaQuery.of(context).size.height / 55,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
