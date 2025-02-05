import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/custom_button.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextfield(
                  title: "Customer name", hint: "Type customer name"),
            ),
            Gap(16),
            Expanded(
              child: TitleTextfield(
                  title: "Customer Email", hint: "Type customer email"),
            ),
          ],
        ),
        Gap(24),
        Row(
          children: [
            Expanded(
              child: TitleTextfield(
                  title: "Item name", hint: "Type customer name"),
            ),
            Gap(16),
            Expanded(
              child: TitleTextfield(title: "Item mount", hint: "USD"),
            ),
          ],
        ),
        Gap(24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: "Add more details",
                backgroundColor: Colors.transparent,
                titleColor: Color(0xFF4EB7F2),
              ),
            ),
            Gap(16),
            Expanded(
              child: CustomButton(
                title: "Send Money",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
