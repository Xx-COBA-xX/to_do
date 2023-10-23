import 'package:flutter/material.dart';
import 'package:to_do_llist_app/core/utils/styles.dart';

class ComplateRateValue extends StatelessWidget {
  const ComplateRateValue({
    super.key,
    required this.size,
    required this.complateTask,
  });

  final Size size;
  final double complateTask;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: size.height * 0.11,
          width: size.height * 0.11,
          child: CircularProgressIndicator(
            strokeWidth: 6,
            value: complateTask,
            backgroundColor: Colors.blueGrey.withOpacity(0.7),
            valueColor: const AlwaysStoppedAnimation(Colors.white),
          ),
        ),
        Text(
          "${(complateTask * 100).toInt()}%",
          style: Style.textStyle20.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
