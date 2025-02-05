import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/dots_indicator.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/my_card_page_view.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      paddingValue: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Card",
            style: AppStyles.styleSemiBold20,
          ),
          Gap(20),
          MyCardPageView(),
          Gap(20),
          DotsIndicator(),
        ],
      ),
    );
  }
}
