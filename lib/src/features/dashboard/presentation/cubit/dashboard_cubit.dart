import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:resp_and_adapt/src/core/styles/app_images.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/drawer_item_model.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial());
  static DashboardCubit get(context) => BlocProvider.of<DashboardCubit>(context);
  final List<DrawerItemModel> items = [
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
  
  int activeIndex = 0;
    
  void changeActiveIndex(int newIndex) {
    activeIndex = newIndex;
    emit(DashboardSuccessful());
  }
}
