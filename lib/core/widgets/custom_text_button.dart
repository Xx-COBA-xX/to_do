// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import '../utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    this.onPressed,
    required this.title,
     this.style = Style.textStyle20,
  }) : super(key: key);

  final void Function()? onPressed;
  final String title;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Text(title, style: style),
    );
  }
}
