import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/core/utils/extensions/context_extension.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (context.width > 800) Gap(40),
        AllExpenses(),
        Gap(24),
        QuickInvoice(),
      ],
    );
  }
}
