import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_llist_app/features/home/data/model/category_model.dart';

class CategoryItems {
  List<CategoryModel> categoryItmes = [
    CategoryModel(icon: FontAwesomeIcons.user, title: "Personal", planNo: 1),
    CategoryModel(icon: FontAwesomeIcons.briefcase, title: "Work", planNo: 2),
    // CategoryModel(icon: FontAwesomeIcons.book, title: "Study", planNo: 1),
  ];
}
