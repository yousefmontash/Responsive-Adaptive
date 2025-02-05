import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/latest_transaction.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/quick_invoice_form.dart';
import 'package:resp_and_adapt/src/features/dashboard/presentation/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      paddingValue: 24,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          Gap(24),
          LatestTransaction(),
          Divider(
            thickness: 1,
            height: 48,
            color: Color(0xFFF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
