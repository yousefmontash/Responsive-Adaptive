import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/all_expenses_header.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/all_expenses_items_list.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          Gap(16),
          AllExpensesItemsList(),
        ],
      ),
    );
  }
}
