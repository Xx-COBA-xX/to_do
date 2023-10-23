// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.color = kPrimaryColor,
  }) : super(key: key);
  final String title;
  final void Function()? onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Expanded(
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            border: color == kFiledColor
                ? Border.all(
                    color: Colors.black12,
                  )
                : null,
          ),
          child: Center(
            child: Text(
              title,
              style: Style.textStyle20.copyWith(
                color: color == kFiledColor ? kPrimaryColor : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
