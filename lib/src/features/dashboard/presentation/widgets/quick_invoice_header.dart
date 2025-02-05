import 'package:flutter/material.dart';
import 'package:resp_and_adapt/src/core/styles/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20,
        ),
        CircleAvatar(
          radius: 24,
          backgroundColor: const Color(0xFFFAFAFA),
          child: IconButton(
            constraints: const BoxConstraints.expand(),
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Color(0xFF4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
