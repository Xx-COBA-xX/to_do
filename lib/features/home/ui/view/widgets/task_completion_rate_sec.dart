import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import 'complate_rate_value.dart';
import 'custom_complation_button.dart';

class TaskCompletionRateSection extends StatefulWidget {
  const TaskCompletionRateSection({super.key});

  @override
  State<TaskCompletionRateSection> createState() =>
      _TaskCompletionRateSectionState();
}

class _TaskCompletionRateSectionState extends State<TaskCompletionRateSection> {
  double complateTask = 0.25;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      width: size.width,
      height: size.height * 0.20,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Keep it up! your daily\ngoals almost done',
                style: Style.textStyle20.copyWith(
                  color: Color.fromARGB(255, 250, 250, 250),
                  fontWeight: FontWeight.w600,
                  fontSize: 18
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomHomeButton(
                size: size,
                onPressed: () {
                  setState(() {
                    if (complateTask < 1.0) {
                      complateTask += 0.05;
                    }
                  });
                },
              ),
            ],
          ),
          ComplateRateValue(
            size: size,
            complateTask: complateTask,
          )
        ],
      ),
    );
  }
}
