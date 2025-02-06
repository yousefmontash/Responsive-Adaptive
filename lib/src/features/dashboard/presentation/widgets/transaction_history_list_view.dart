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
    return Column(
      children: List.generate(
        items.length * 2 - 1,
        (index) {
          if (index % 2 == 0) {
            return TransactionHistoryItem(transaction: items[(index ~/ 2)]);
          } else {
            return Gap(12);
          }
        },
      ),
    );
  }
}
