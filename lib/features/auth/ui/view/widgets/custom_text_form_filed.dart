import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class CustomTextFormFiled extends StatefulWidget {
  const CustomTextFormFiled(
      {super.key,
      required this.hint,
      required this.icon,
      this.onSaved,
      this.validator,
      this.autovalidateMode,
      this.isPassword = false});
  final String hint;
  final IconData icon;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final bool isPassword;

  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: widget.validator,
        obscureText: showPassword,
        autovalidateMode: widget.autovalidateMode,
        decoration: InputDecoration(
          border: _textFormFiledBorder(),
          focusedBorder: _textFormFiledBorder(),
          disabledBorder: _textFormFiledBorder(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.black54,
              width: 1.5,
            ),
          ),
          icon: Icon(
            widget.icon,
            color: kPrimaryColor,
            size: 30,
          ),
          hintText: widget.hint,
          hintStyle: Style.textStyle16.copyWith(
            color: kPrimaryColor,
          ),
          suffixIcon: widget.isPassword
              ? CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Icon(
                    showPassword
                        ? CupertinoIcons.eye_slash
                        : CupertinoIcons.eye,
                  ),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                )
              : const SizedBox(),
        ),
        onSaved: widget.onSaved);
  }

  OutlineInputBorder _textFormFiledBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: kPrimaryColor, width: 2));
  }
}
