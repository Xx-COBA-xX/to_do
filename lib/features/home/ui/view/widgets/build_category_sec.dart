import 'package:flutter/material.dart';

import '../../../data/model/category_model.dart';
import 'build_category_itme.dart';

class BuildCategorySection extends StatelessWidget {
  const BuildCategorySection({
    Key? key,
    required this.categories,
  }) : super(key: key);
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.18,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BuildCategoryItem(
            icon: categories[index].icon,
            title: categories[index].title,
            planNo: categories[index].planNo,
          );
        },
        separatorBuilder: (context, _) {
          return const SizedBox(
            width: 16,
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
