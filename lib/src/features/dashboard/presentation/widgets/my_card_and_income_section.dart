import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/income_section.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/my_card_and_transaction_history.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Gap(40),
          MyCardAndTransactionHistory(),
          Gap(24),
          IncomeSection(),
        ],
      ),
    );
  }
}
