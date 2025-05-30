import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/darwer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DarwerItemModel> items = [
    DarwerItemModel(title: 'Dashboard', icon: Assets.imagesDashboard),
    DarwerItemModel(title: 'My Transaction', icon: Assets.imagesMyTransctions),
    DarwerItemModel(title: 'Statistics', icon: Assets.imagesStatistics),
    DarwerItemModel(title: 'Wallet Account', icon: Assets.imagesWalletAccount),
    DarwerItemModel(title: 'My Investments', icon: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
              image: Assets.imagesAvatar3),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DrawerItem(drawerItem: items[index]),
              );
            },
          )
        ],
      ),
    );
  }
}
