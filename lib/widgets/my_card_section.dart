import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/don_indicator.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';

import '../utils/app_styles.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text('My Cards', style: AppStyles.styleSemiBold20(context)),
        ),
        const SizedBox(height: 20),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(height: 20),
        DonIndicator(
          currentPageIndex: currentPageIndex,
        )
      ],
    );
  }
}
