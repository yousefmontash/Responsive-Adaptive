import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/income_section.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/my_card_and_transaction_history.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              AllExpensesAndQuickInvoiceSection(),
              Gap(24),
              MyCardAndTransactionHistory(),
              Gap(24),
              // IncomeSection(),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: IncomeSection(),
        )
      ],
    );
  }
}
