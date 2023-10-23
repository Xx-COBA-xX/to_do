import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_llist_app/core/widgets/custom_button.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import 'add_task_category_list_view.dart';
import 'build_new_sec_title.dart';
import 'build_text_filed.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  DateTime myDateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width,
      height: widget.size.height * 0.75,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 80,
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(8)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "New Task",
                style: Style.textStyle24,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTitle(title: "Title Task"),
                  const SizedBox(
                    height: 8,
                  ),
                  const BuildTextFiled(
                    maxLine: 1,
                    height: 0.060,
                    hintText: "Add Task Title",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const BuildNewSectionTitle(
                    title: "Category",
                    icon: Icons.arrow_forward_rounded,
                  ),
                  AddTaskCategoryItems(
                    size: widget.size,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  buildTitle(title: "Description"),
                  const SizedBox(
                    height: 8,
                  ),
                  const BuildTextFiled(
                    maxLine: 3,
                    height: 0.12,
                    hintText: "Task Description",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildTitle(title: "Date"),
                            const SizedBox(
                              height: 5,
                            ),
                            BuildTextFiled(
                              maxLine: 1,
                              height: 0.055,
                              hintText: DateFormat("dd/MM/yyyy").format(myDateTime).toString(),
                              icon: Icons.calendar_month,
                              onTap: () {
                                showCupertinoModalPopup(
                                  context: context,
                                  builder: (context) => SizedBox(
                                    height: 250,
                                    child: CupertinoDatePicker(
                                      onDateTimeChanged: (selectTime) {
                                        setState(() {
                                          myDateTime = selectTime;
                                        });
                                      },
                                      initialDateTime: myDateTime,
                                      backgroundColor: Colors.white,
                                      mode: CupertinoDatePickerMode.date,
                                    ),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildTitle(title: "Time"),
                            const SizedBox(
                              height: 5,
                            ),
                            BuildTextFiled(
                              maxLine: 1,
                              height: 0.055,
                              hintText: "hh:mm",
                              icon: Icons.schedule,
                              onTap: () {},
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: widget.size.width,
                    child: Row(
                      children: [
                        Expanded(
                            child: CustomButton(
                          title: "Cencal",
                          color: kFiledColor,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: CustomButton(
                            title: "Create",
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text buildTitle({required String title}) {
    return Text(
      title,
      style: Style.textStyle20.copyWith(
        color: kTextColor,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
