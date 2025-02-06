import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/dashboard_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        Gap(16),
        Expanded(
          flex: 2,
          child: DashBoardMobileLayout(),
        ),
        Gap(16),
      ],
    );
  }
}
