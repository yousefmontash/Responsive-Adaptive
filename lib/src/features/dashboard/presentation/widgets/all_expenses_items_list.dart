import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/all_expenses_item.dart';

class AllExpensesItemsList extends StatelessWidget {
  const AllExpensesItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        final dashboardCubit = DashboardCubit.get(context);
        return Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  dashboardCubit.changeActiveExpenseItem(0);
                },
                child: AllExpensesItem(
                    isActive:
                        dashboardCubit.activeExpenseItem == 0,
                    expensesModel:
                        dashboardCubit.expencesItems[0]),
              ),
            ),
            const Gap(12),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  dashboardCubit.changeActiveExpenseItem(1);
                },
                child: AllExpensesItem(
                  expensesModel: dashboardCubit.expencesItems[1],
                  isActive: dashboardCubit.activeExpenseItem == 1,
                ),
              ),
            ),
            const Gap(12),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  dashboardCubit.changeActiveExpenseItem(2);
                },
                child: AllExpensesItem(
                  expensesModel: dashboardCubit.expencesItems[2],
                  isActive: dashboardCubit.activeExpenseItem == 2,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
