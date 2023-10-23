import 'package:flutter/material.dart';

import '../../../data/model/category_model.dart';
import '../../view_model/category_view_model/categroy_view_model.dart';
import 'add_task_category_item.dart';

class AddTaskCategoryItems extends StatefulWidget {
  const AddTaskCategoryItems({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  State<AddTaskCategoryItems> createState() => _AddTaskCategoryItemsState();
}

class _AddTaskCategoryItemsState extends State<AddTaskCategoryItems> {
  int currentIndex = 0;
  final List<CategoryModel> categories = CategoryItems().categoryItmes;

  _AddTaskCategoryItemsState();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height * 0.06,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return AddTaskCategoryItem(
            categories: categories,
            currentIndex: currentIndex,
            index: index,
            size: widget.size,
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
          );
        },
        separatorBuilder: (context, _) {
          return const SizedBox(
            width: 9,
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
