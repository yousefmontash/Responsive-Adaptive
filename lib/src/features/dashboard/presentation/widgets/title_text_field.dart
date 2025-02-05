import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/custom_text_field.dart';

class TitleTextfield extends StatelessWidget {
  const TitleTextfield({super.key, required this.title, required this.hint});
  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        const Gap(12),
        CustomTextField(hint: hint),
      ],
    );
  }
}
