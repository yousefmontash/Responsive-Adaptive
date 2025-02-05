import 'package:flutter/material.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/expenses_model.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/active_inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.expensesModel, required this.isActive});
  final ExpensesModel expensesModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    // TODO: use the animatedCrossFaid
    return isActive
        ? ActiveAllExpensesItem(
            expensesModel: expensesModel,
          )
        : InactiveAllExpensesItem(
            expensesModel: expensesModel,
          );
  }
}
