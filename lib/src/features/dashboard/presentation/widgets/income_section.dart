import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/income_chart.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/income_details.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomBackgroundContainer(
        child: Column(
          children: [
            IncomeHeader(),
            Gap(16),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: IncomeChart(),
                  ),
                  Gap(40),
                  Expanded(
                    flex: 2,
                    child: IncomeDetails(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
