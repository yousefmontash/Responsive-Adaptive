import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/active_drawer_item.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/inactive_drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return SliverList.builder(
          itemCount: DashboardCubit.get(context).items.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              if (DashboardCubit.get(context).activeIndex != index) {
                DashboardCubit.get(context).changeActiveIndex(index);
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DashboardCubit.get(context).activeIndex == index
                  ? ActiveDrawerItem(
                      drawerItemModel: DashboardCubit.get(context).items[index],
                    )
                  : InActiveDrawerItem(
                      drawerItemModel: DashboardCubit.get(context).items[index],
                    ),
            ),
          ),
        );
      },
    );
  }
}
