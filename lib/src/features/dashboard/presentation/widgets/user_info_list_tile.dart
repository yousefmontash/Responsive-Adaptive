import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';
import 'package:resp_and_adapt/src/features/dashboard/domain/models/user_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.user,
  });
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        leading: SvgPicture.asset(
          user.image,
          height: 48,
        ),
        title: Text(
          user.name,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          user.email,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
