// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key? key,
    required this.stateOfTask,
    this.onPressed,
  }) : super(key: key);

  final String stateOfTask;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Meeting With Cilent",
                style: Style.textStyle16.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 17),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                "Feb 10, Massage Mobile App Ui",
                style: Style.textStyle13.copyWith(fontSize: 14),
              ),
            ],
          ),
          const Spacer(),
          CustomTextButton(
            title: stateOfTask,
            style: Style.textStyle16.copyWith(
              color: stateOfTask == "Completed"
                  ? kPrimaryColor
                  : stateOfTask == "On Going"
                      ? Colors.orange
                      : Colors.red,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
