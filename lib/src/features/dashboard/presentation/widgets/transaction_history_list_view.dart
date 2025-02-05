import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/transaction_model.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
      purpose: "Cash Withdrawal",
      date: "13 Apr, 2022",
      value: "20,129",
      isWithdrawal: true,
    ),
    TransactionModel(
      purpose: "Landing Page project",
      date: "13 Apr, 2022",
      value: "2,000",
      isWithdrawal: false,
    ),
    TransactionModel(
      purpose: "Juni Mobile App project",
      date: "13 Apr, 2022",
      value: "20,129",
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransactionHistoryItem(transaction: items[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Gap(12);
      },
    );
  }
}
