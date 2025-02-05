import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Gap(40),
          AllExpenses(),
          Gap(24),
          QuickInvoice(),
        ],
      ),
    );
  }
}
