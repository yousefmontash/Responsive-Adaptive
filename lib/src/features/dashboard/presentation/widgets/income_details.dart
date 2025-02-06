import 'package:flutter/material.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/chart_item_model.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/chart_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<ChartItemModel> items = [
    ChartItemModel(
      title: "Design service",
      percentage: "40",
      color: Color(0xFF208CC8),
    ),
    ChartItemModel(
      title: "Design product",
      percentage: "25",
      color: Color(0xFF4EB7F2),
    ),
    ChartItemModel(
      title: "Product royalti",
      percentage: "20",
      color: Color(0xFF064061),
    ),
    ChartItemModel(
      title: "Other",
      percentage: "22",
      color: Color(0xFFE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ChartItemDetails(chartItem: items[index]);
      },
    );
  }
}
