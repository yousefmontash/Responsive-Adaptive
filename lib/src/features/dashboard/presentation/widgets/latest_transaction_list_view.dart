import 'package:flutter/widgets.dart';
import 'package:resp_and_adapt/src/core/styles/app_images.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/user_model.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static List<UserModel> items = [
    UserModel(
        image: AppImages.imagesAvatar1,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail"),
    UserModel(
        image: AppImages.imagesAvatar2,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail"),
    UserModel(
        image: AppImages.imagesAvatar3,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              user: items[index],
            ),
          );
        },
      ),
    );
  }
}
