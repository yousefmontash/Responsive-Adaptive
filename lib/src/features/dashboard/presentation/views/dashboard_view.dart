import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/adaptive_layout.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/dashboard_desktop_layout.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/dashboard_mobile_layout.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F9FA),
        body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout: (context) => const DashBoardDesktopLayout(),
        ),
      ),
    );
  }
}
