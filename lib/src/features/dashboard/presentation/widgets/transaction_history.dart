import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/transaction_history_header.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const Gap(20),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        const Gap(16),
        const TransactionHistoryListView(),
      ],
    );
  }
}
