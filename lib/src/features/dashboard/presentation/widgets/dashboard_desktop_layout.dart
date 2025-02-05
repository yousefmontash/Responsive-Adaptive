import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 6, child: CustomDrawer()),
        Gap(32),
        Expanded(
          flex: 13,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(40),
                AllExpenses(),
                Gap(24),
                QuickInvoice(),
              ],
            ),
          ),
        ),
        Gap(24),
        Expanded(flex: 10, child: SizedBox()),
      ],
    );
  }
}
