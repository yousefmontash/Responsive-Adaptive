import 'package:resp_and_adapt/src/shared/domain/enums/expense_type_enum.dart';

class ExpensesModel {
  final String date, value;
  final ExpenseTypeEnum expenseType;

  ExpensesModel(
      {required this.expenseType, required this.date, required this.value});
}
