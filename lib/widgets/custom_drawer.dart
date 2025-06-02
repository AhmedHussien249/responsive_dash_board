import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/darwer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_in_active_drawer_item.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        //! ml7oza lw est5dmt singlechiledscrollview mynf3sh ts5tmd expanded
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com',
                  image: Assets.imagesAvatar3),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          CustomDrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveListTile(
                    drawerItem: DarwerItemModel(
                        title: 'Setting system', icon: Assets.imagesSettings)),
                SizedBox(
                  height: 20,
                ),
                InActiveListTile(
                    drawerItem: DarwerItemModel(
                        title: 'Logout account', icon: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
