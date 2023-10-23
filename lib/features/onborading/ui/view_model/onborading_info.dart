import 'package:to_do_llist_app/core/utils/assets.dart';
import 'package:to_do_llist_app/features/onborading/data/model/onboraing_model.dart';

class OnBoradingInfo {
  static List<OnBoradingModel> onBoradingInfo = [
    OnBoradingModel(
      image: Assets.onBoradingImage_1,
      title: "Creat a task",
      description: "Write down your task so you don't forget.",
    ),
    OnBoradingModel(
      image: Assets.onBoradingImage_2,
      title: "Update your progress",
      description: "You can mark your progress during the work day",
    ),
    OnBoradingModel(
      image: Assets.onBoradingImage_3,
      title: "Achieve your task",
      description: "Achieve your goals on the path to success",
    ),
  ];
}
