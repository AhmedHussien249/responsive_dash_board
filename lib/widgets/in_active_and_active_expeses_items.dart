import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_headers.dart';

class InActiveExpensesItems extends StatelessWidget {
  const InActiveExpensesItems({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xffF1F1F1), width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeaders(icon: itemModel.icon),
          const SizedBox(
            height: 34,
          ),
          Text(itemModel.title, style: AppStyles.styleSemiBold16(context)),
          const SizedBox(
            height: 8,
          ),
          Text(itemModel.date, style: AppStyles.styleRegular14(context)),
          const SizedBox(
            height: 16,
          ),
          Text(itemModel.price, style: AppStyles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}

class ActiveExpensesItems extends StatelessWidget {
  const ActiveExpensesItems({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeaders(
              imageBackground: Colors.white.withOpacity(0.10),
              iconColor: Colors.white,
              icon: itemModel.icon),
          const SizedBox(
            height: 34,
          ),
          Text(itemModel.title,
              style: AppStyles.styleMedium16(context).copyWith(
                color: Colors.white,
              )),
          const SizedBox(
            height: 8,
          ),
          Text(itemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                color: const Color(0xFFFAFAFA),
              )),
          const SizedBox(
            height: 16,
          ),
          Text(itemModel.price,
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
