import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/chart_item_model.dart';

class ChartItemDetails extends StatelessWidget {
  const ChartItemDetails({super.key, required this.chartItem});
  final ChartItemModel chartItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 6,
          backgroundColor: chartItem.color,
        ),
        Gap(12),
        Text(
          chartItem.title,
          style: AppStyles.styleRegular16,
        ),
        Spacer(),
        Text(
          "${chartItem.percentage}%",
          style: AppStyles.styleMedium16.copyWith(
            color: Color(0xFF208CC8),
          ),
        )
      ],
    );
  }
}
