import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resp_and_adapt/src/core/styles/size_config.dart';
import 'package:resp_and_adapt/src/core/utils/extensions/context_extension.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/adaptive_layout.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/dashboard_desktop_layout.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/dashboard_mobile_layout.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: Scaffold(
        key: scaffoldKey,
        drawer:
            context.width < SizeConfig.tabletBreakPoint ? CustomDrawer() : null,
        appBar: context.width < SizeConfig.tabletBreakPoint
            ? AppBar(
                backgroundColor: Color(0xFF4EB7F2),
                leading: IconButton(
                  color: Color(0xFF064061),
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                  ),
                ),
              )
            : null,
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
