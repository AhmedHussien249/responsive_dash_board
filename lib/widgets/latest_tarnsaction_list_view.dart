import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTarnsactionListView extends StatelessWidget {
  const LatestTarnsactionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                  child: UserInfoListTile(
                    userInfoModel: e,
                  ),
                ))
            .toList(),
      ),
    );
  }
}

//! shoit ml7ozat hena ana mst5dmtsh leh expanded m3 el child 3shan kda kan mmkn el height bta3o yzed lw el shasha s8rt 
//! fa kan a7sn 7al eni ast5dm IntrinsicWidth

//! w lw 3add el 3nasr kteer fa lazm ast5dm el ListView.builder 3shan hya lazy builder

    //? return SizedBox(
    //?   height: 80,
    //?   child: ListView.builder(
    //?     scrollDirection: Axis.horizontal,
    //?     itemBuilder: (context, index) {
    //?       return IntrinsicWidth(
    //?         child: UserInfoListTile(
    //?           userInfoModel: items[index],
    //?         ),
    //?       );
    //?     },
    //?     itemCount: items.length,
    //?   ),
    //? );