// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:to_do_llist_app/features/home/data/model/category_model.dart';
import 'package:to_do_llist_app/features/home/ui/view/widgets/task_completion_rate_sec.dart';
import 'package:to_do_llist_app/features/home/ui/view_model/category_view_model/categroy_view_model.dart';

import 'build_category_sec.dart';
import 'build_new_sec_title.dart';
import 'task_item_list_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final List<CategoryModel> categories = CategoryItems().categoryItmes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                const TaskCompletionRateSection(),
                const SizedBox(
                  height: 16,
                ),
                const BuildNewSectionTitle(
                  title: "Task Category",
                  icon: Icons.arrow_forward,
                ),
                const SizedBox(
                  height: 16,
                ),
                BuildCategorySection(
                  categories: categories,
                ),
                const SizedBox(
                  height: 16,
                ),
                const BuildNewSectionTitle(
                  title: "Priority Task",
                  icon: Icons.arrow_forward,
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: TaskItemListView(),
          )
        ],
      ),
    );
  }
}
