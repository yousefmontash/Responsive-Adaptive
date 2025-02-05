import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/my_card_item.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      onPageChanged: (value) {
        if (value != DashboardCubit.get(context).activePageView) {
          DashboardCubit.get(context).changeActivePageView(value);
        }
      },
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) {
          return const MyCardItem();
        },
      ),
    );
  }
}
