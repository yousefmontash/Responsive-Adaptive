import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.iconBackgroundColor,
    this.iconColor,
  });
  final String image;
  final Color? iconBackgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: iconBackgroundColor ?? const Color(0xFFFAFAFA),
            child: SvgPicture.asset(
              image,
              height: 32,
              colorFilter: ColorFilter.mode(
                  iconColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
            ),
          ),
        ),
        Transform.rotate(
          angle: pi / 180 * 180,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 24,
            color: iconColor ?? const Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
