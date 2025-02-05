import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:resp_and_adapt/src/core/styles/app_images.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/drawer_item_model.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/expenses_model.dart';
import 'package:resp_and_adapt/src/shared/domain/enums/expense_type_enum.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial());
  static DashboardCubit get(context) =>
      BlocProvider.of<DashboardCubit>(context);
  final List<DrawerItemModel> drawerItems = [
    const DrawerItemModel(title: "Dashboard", image: AppImages.imagesDashboard),
    const DrawerItemModel(
        title: "My Transaction", image: AppImages.imagesMyTransctions),
    const DrawerItemModel(
        title: "Statistics", image: AppImages.imagesStatistics),
    const DrawerItemModel(
        title: "Wallet Account", image: AppImages.imagesWalletAccount),
    const DrawerItemModel(
        title: "My Investments", image: AppImages.imagesMyInvestments),
  ];
  final List<ExpensesModel> expencesItems = [
    ExpensesModel(
        expenseType: ExpenseTypeEnum.balance,
        date: "April 2022",
        value: "20,129"),
    ExpensesModel(
        expenseType: ExpenseTypeEnum.income,
        date: "April 2022",
        value: "20,129"),
    ExpensesModel(
        expenseType: ExpenseTypeEnum.expenses,
        date: "April 2022",
        value: "20,129"),
  ];

  int activeDrawerItem = 0;
  int activeExpenseItem = 0;
  int activePageView = 0;

  void changeActiveDrawerItem(int newIndex) {
    activeDrawerItem = newIndex;
    emit(DashboardSuccessful());
  }

  void changeActiveExpenseItem(int newIndex) {
    activeExpenseItem = newIndex;
    emit(DashboardSuccessful());
  }

  void changeActivePageView(int newIndex) {
    activePageView = newIndex;
    emit(DashboardSuccessful());
  }
}
