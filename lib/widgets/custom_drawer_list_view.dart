import 'dart:developer';

import 'package:flutter/material.dart';

import '../models/darwer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({super.key});

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  final List<DarwerItemModel> items = [
    const DarwerItemModel(title: 'Dashboard', icon: Assets.imagesDashboard),
    const DarwerItemModel(
        title: 'My Transaction', icon: Assets.imagesMyTransctions),
    const DarwerItemModel(title: 'Statistics', icon: Assets.imagesStatistics),
    const DarwerItemModel(
        title: 'Wallet Account', icon: Assets.imagesWalletAccount),
    const DarwerItemModel(
        title: 'My Investments', icon: Assets.imagesMyInvestments),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (index != currentIndex) {
              setState(() {
                currentIndex = index;
                log(currentIndex.toString());
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
                drawerItem: items[index], isActive: currentIndex == index),
          ),
        );
      },
    );
  }
}
