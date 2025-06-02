import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';

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
        Expanded(child: MyCardSection())
      ],
    );
  }
}
