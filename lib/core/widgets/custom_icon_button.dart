import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    this.onPressed,
    required this.icon,
    required this.size,
  }) : super(key: key);
  final void Function()? onPressed;
  final IconData icon;
  final double size;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.black54,
        size: size,
      ),
    );
  }
}
