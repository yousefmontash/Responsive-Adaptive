import 'package:flutter/material.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction History",
          style: AppStyles.styleSemiBold20(context),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "See all",
            style: AppStyles.styleMedium16(context).copyWith(
              color: const Color(0xFF4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
