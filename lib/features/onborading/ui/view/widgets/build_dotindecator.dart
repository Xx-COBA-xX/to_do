import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../data/model/onboraing_model.dart';

class BuildDotIndecator extends StatelessWidget {
  const BuildDotIndecator({
    Key? key,
    required this.myData,
    required this.currentIndex,
  }) : super(key: key);
  final List<OnBoradingModel> myData;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(myData.length, (index) {
          return buildDot(index);
        }));
  }

  buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 12,
      margin: const EdgeInsets.only(left: 4),
      width: currentIndex == index ? 28 : 12,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: currentIndex == index ? kPrimaryColor : Colors.grey[300]),
    );
  }
}
