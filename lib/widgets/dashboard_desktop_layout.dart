import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history_section.dart';

import 'all_expenses_and_quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: AllExpensesAndQuickInvoice(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: MyCardAndTransactionHistorySection(),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(child: IncomeSection()),
          ],
        ))
      ],
    );
  }
}
