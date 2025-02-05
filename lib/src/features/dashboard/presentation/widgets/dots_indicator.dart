import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Row(
          children: List.generate(
            3 + (3 - 1),
            (index) {
              if (index % 2 == 0) {
                return CustomDotIndicator(
                    isActive: DashboardCubit.get(context).activePageView ==
                        index / 2);
              } else {
                return const Gap(8);
              }
            },
          ),
        );
      },
    );
  }
}
