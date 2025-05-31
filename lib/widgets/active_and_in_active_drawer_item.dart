import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/darwer_item_model.dart';
import '../utils/app_styles.dart';

class InActiveListTile extends StatelessWidget {
  const InActiveListTile({
    super.key,
    required this.drawerItem,
  });

  final DarwerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.icon),
      title: Text(
        drawerItem.title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

class ActiveListTile extends StatelessWidget {
  const ActiveListTile({
    super.key,
    required this.drawerItem,
  });

  final DarwerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.icon),
      title: Text(
        drawerItem.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
