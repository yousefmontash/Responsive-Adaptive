import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/core/styles/app_images.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/drawer_item_model.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/user_model.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/drawer_items_listview.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/inactive_drawer_item.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: UserInfoListTile(
                  user: UserModel(
                      image: AppImages.imagesAvatar3,
                      name: "Lekan Okeowo",
                      email: "demo@gmail.com"),
                ),
              ),
            ),
            const DrawerItemsListView(),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: "Setting system",
                      image: AppImages.imagesSettings,
                    ),
                  ),
                  Gap(20),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: "Logout account",
                      image: AppImages.imagesLogout,
                    ),
                  ),
                  Gap(48),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
