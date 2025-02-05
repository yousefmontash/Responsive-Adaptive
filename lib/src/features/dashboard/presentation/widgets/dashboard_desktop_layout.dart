import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        Gap(32),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              AllExpenses(),
            ],
          ),
        ),
        Gap(24),
        Expanded(flex: 3, child: SizedBox()),
      ],
    );
  }
}
