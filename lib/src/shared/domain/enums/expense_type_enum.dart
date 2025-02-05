import 'package:resp_and_adapt/src/core/styles/app_images.dart';

enum ExpenseTypeEnum {
  balance(image: AppImages.imagesBalance, title: "Balance"),
  income(image: AppImages.imagesIncome, title: "Income"),
  expenses(image: AppImages.imagesExpenses, title: "Expenses");

  final String image;
  final String title;

  const ExpenseTypeEnum({required this.image, required this.title});
}
