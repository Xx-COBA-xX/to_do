import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/model/category_model.dart';

class AddTaskCategoryItem extends StatelessWidget {
  const AddTaskCategoryItem(
      {super.key,
      required this.size,
      required this.currentIndex,
      required this.index,
      required this.categories,
      this.onTap});

  final Size size;
  final int currentIndex;
  final int index;
  final List<CategoryModel> categories;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: size.width * 0.45,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: currentIndex == index ? kPrimaryColor : kFiledColor,
          border: currentIndex == index
              ? null
              : Border.all(
                  color: Colors.black12,
                ),
        ),
        child: Row(
          children: [
            Icon(
              categories[index].icon,
              color: currentIndex == index ? Colors.white : Colors.black45,
            ),
            const Spacer(),
            Text(
              categories[index].title,
              style: Style.textStyle20.copyWith(
                color: currentIndex == index ? Colors.white : Colors.black45,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
