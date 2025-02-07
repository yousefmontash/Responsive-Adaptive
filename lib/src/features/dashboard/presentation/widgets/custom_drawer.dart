import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/core/styles/app_images.dart';
import 'package:resp_and_adapt/src/core/utils/extensions/context_extension.dart';
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
      width: context.width * 0.7,
      decoration: const BoxDecoration(color: Colors.white),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: UserInfoListTile(
                user: UserModel(
                    image: AppImages.imagesAvatar3,
                    name: "Lekan Okeowo",
                    email: "demo@gmail.com"),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: const DrawerItemsListView(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: const SliverFillRemaining(
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
            ),
          )
        ],
      ),
    );
  }
}
