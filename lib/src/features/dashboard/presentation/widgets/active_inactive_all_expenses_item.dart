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
        border: Border.all(
          color: const Color(0xFF4EB7F2),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: expensesModel.expenseType.image,
            iconBackgroundColor: Colors.white.withValues(
                alpha: ((1 - 0.1) * 256)
                    .roundToDouble()), // 0.1 is the opacity i want (10% of the color)
            iconColor: Colors.white,
          ),
          const Gap(34),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  expensesModel.expenseType.title,
                  style: AppStyles.styleSemiBold16(context)
                      .copyWith(color: Colors.white),
                ),
              ),
              const Gap(8),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  expensesModel.date,
                  style: AppStyles.styleRegular14(context)
                      .copyWith(color: const Color(0xFFFAFAFA)),
                ),
              ),
              const Gap(16),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  r"$" + expensesModel.value,
                  style: AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white),
                ),
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
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  expensesModel.expenseType.title,
                  style: AppStyles.styleSemiBold16(context),
                ),
              ),
              const Gap(8),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  expensesModel.date,
                  style: AppStyles.styleRegular14(context),
                ),
              ),
              const Gap(16),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  r"$" + expensesModel.value,
                  style: AppStyles.styleSemiBold24(context),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
