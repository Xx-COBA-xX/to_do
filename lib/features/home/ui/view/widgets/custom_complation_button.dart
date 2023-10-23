import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomHomeButton extends StatelessWidget {
  const CustomHomeButton({
    super.key,
    required this.size, this.onPressed,
  });

  final Size size;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        height: size.height*0.055,
        width: size.width * 0.35,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            "View Plan",
            style: Style.textStyle20.copyWith(fontSize: 19),
          ),
        ),
      ),
    );
  }
}
