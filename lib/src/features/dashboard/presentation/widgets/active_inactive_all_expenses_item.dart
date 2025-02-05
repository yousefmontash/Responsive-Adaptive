import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/expenses_model.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.expensesModel});
  final ExpensesModel expensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: expensesModel.expenseType.image,
            iconBackgroundColor: Colors.white.withOpacity(0.1),
            iconColor: Colors.white,
          ),
          const Gap(34),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expensesModel.expenseType.title,
                style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
              ),
              const Gap(8),
              Text(
                expensesModel.date,
                style: AppStyles.styleRegular14
                    .copyWith(color: const Color(0xFFFAFAFA)),
              ),
              const Gap(16),
              Text(
                r"$" + expensesModel.value,
                style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InactiveAllExpensesItem extends StatelessWidget {
  const InactiveAllExpensesItem({super.key, required this.expensesModel});
  final ExpensesModel expensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFF1F1F1),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: expensesModel.expenseType.image,
          ),
          const Gap(34),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expensesModel.expenseType.title,
                style: AppStyles.styleSemiBold16,
              ),
              const Gap(8),
              Text(
                expensesModel.date,
                style: AppStyles.styleRegular14,
              ),
              const Gap(16),
              Text(
                r"$" + expensesModel.value,
                style: AppStyles.styleSemiBold24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
