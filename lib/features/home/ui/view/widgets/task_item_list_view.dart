import 'package:flutter/material.dart';
import 'package:to_do_llist_app/features/home/ui/view/widgets/task_itme.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class TaskItemListView extends StatefulWidget {
  const TaskItemListView({super.key});

  @override
  State<TaskItemListView> createState() => _TaskItemListViewState();
}

class _TaskItemListViewState extends State<TaskItemListView> {
  String stateOfTask = "Completed";

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return TaskItem(
          stateOfTask: stateOfTask,
          onPressed: () {
            customShowDialog(context);
          },
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 8,
        );
      },
      itemCount: 2,
    );
  }

  Future<dynamic> customShowDialog(BuildContext context) {
    return showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                contentPadding: EdgeInsets.zero,
                backgroundColor: Colors.white,
                content: Container(
                  height: 135,
                  child: Column(
                    children: [
                      CustomTextButton(
                        title: "Completed",
                        onPressed: () {
                          setState(() {
                            stateOfTask = "Completed";
                            Navigator.pop(context);
                          });
                        },
                        style: Style.textStyle16
                            .copyWith(fontSize: 17, color: kPrimaryColor),
                      ),
                      CustomTextButton(
                        title: "On Going",
                        onPressed: () {
                          setState(() {
                            stateOfTask = "On Going";
                            Navigator.pop(context);

                          });
                        },
                        style: Style.textStyle16
                            .copyWith(fontSize: 17, color: Colors.orange),
                      ),
                      CustomTextButton(
                        title: "Wating",
                        onPressed: () {
                          setState(() {
                            stateOfTask = "Wating";
                            Navigator.pop(context);

                          });
                        },
                        style: Style.textStyle16
                            .copyWith(fontSize: 17, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
  }

}
