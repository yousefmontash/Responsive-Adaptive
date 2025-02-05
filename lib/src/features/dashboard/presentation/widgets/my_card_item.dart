import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/core/styles/app_images.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';

class MyCardItem extends StatelessWidget {
  const MyCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AppImages.imagesCardBackground,
            ),
          ),
          color: const Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(
                right: 42,
                left: 31,
                top: 16,
              ),
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: const Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(
                AppImages.imagesGallery,
                height: 24,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style:
                        AppStyles.styleSemiBold24.copyWith(color: Colors.white),
                  ),
                  const Gap(12),
                  Text(
                    "12/20 - 124",
                    style:
                        AppStyles.styleRegular16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Gap(24),
          ],
        ),
      ),
    );
  }
}
