import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/darwer_item_model.dart';

import 'active_and_in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItem, required this.isActive});
  final DarwerItemModel drawerItem;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    // return AnimatedSwitcher(
    //     duration: const Duration(milliseconds: 300),
    //     transitionBuilder: (child, animation) => SlideTransition(
    //           position: Tween<Offset>(
    //             begin: const Offset(0, 0.3),
    //             end: Offset.zero,
    //           ).animate(animation),
    //           child: FadeTransition(
    //             opacity: animation,
    //             child: ScaleTransition(scale: animation, child: child),
    //           ),
    //         ),
    //     child:
    return isActive
        ? ActiveListTile(drawerItem: drawerItem)
        : InActiveListTile(
            drawerItem: drawerItem,
          );
  }
}
