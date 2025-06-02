import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';

import '../utils/app_images.dart';
import 'all_expensess_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
      title: 'Balance',
      date: 'April 2022',
      icon: Assets.imagesBalance,
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      title: 'Income',
      date: 'April 2022',
      icon: Assets.imagesIncome,
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      title: 'Expenses',
      date: 'April 2022',
      icon: Assets.imagesExpenses,
      price: r'$20,129',
    )
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map((e) => Expanded(child: AllExpensessItem(itemModel: e)))
      //     .toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensessItem(
                  itemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: AllExpensessItem(
              itemModel: item,
              isSelected: selectedIndex == index,
            ),
          ));
        }
      }).toList(),
    );
  }

  void updateIndex(int index) => setState(() => selectedIndex = index);
}
