import 'package:flutter/material.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/transaction_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transaction});
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4, // as the default for listTile is 12
        ),
        title: Text(
          transaction.purpose,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transaction.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          r"$" + transaction.value,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transaction.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7DD97B),
          ),
        ),
      ),
    );
  }
}
