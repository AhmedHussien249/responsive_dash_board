import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/income_section_chart.dart';

import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      children: [
        IncomeSectionHeader(),
        Row(
          //! la7z bs kan fe expanded 3la el row d bs ana sheltha 3shan el single child scroll view bt3ml shrink fa mynf3sh expanded
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: IncomeSectionChart(),
            ),
            Expanded(child: IncomeDetails())
          ],
        ),
      ],
    ));
  }
}
