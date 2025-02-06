import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: "",
          value: 22,
          color: const Color(0xFFE2DECD),
        ),
        PieChartSectionData(
          title: "",
          value: 20,
          color: const Color(0xFF064061),
        ),
        PieChartSectionData(
          title: "",
          value: 25,
          color: const Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          title: "",
          value: 40,
          color: const Color(0xFF208CC8),
        ),
      ],
    );
  }
}
