import 'package:flutter/material.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/adaptive_layout.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/dashboard_desktop_layout.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/dashboard_mobile_layout.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
