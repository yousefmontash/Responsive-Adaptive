import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/chart_item_model.dart';

class ChartItemDetails extends StatelessWidget {
  const ChartItemDetails({super.key, required this.chartItem});
  final ChartItemModel chartItem;

  @override
  Widget build(BuildContext context) {
    // return ListTile(
    //   leading: Container(
    //     width: 12,
    //     height: 12,
    //     decoration: ShapeDecoration(
    //       color: chartItem.color,
    //       shape: const OvalBorder(),
    //     ),
    //   ),
    //   title: Text(
    //     chartItem.title,
    //     style: AppStyles.styleRegular16,
    //   ),
    //   trailing: Text(
    //     chartItem.percentage,
    //     style: AppStyles.styleMedium16,
    //   ),
    // );

    return Row(
      children: [
        CircleAvatar(
          radius: 6,
          backgroundColor: chartItem.color,
        ),
        Gap(12),
        Expanded(
          child: Text(
            chartItem.title,
            style: AppStyles.styleRegular16,
          ),
        ),
        Gap(8),
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
