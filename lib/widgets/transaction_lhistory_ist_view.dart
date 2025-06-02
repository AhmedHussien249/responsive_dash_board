import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transactions_model.dart';

import 'transaction_item.dart';

class TransactionLhistoryIstView extends StatelessWidget {
  const TransactionLhistoryIstView({super.key});

  static const item = [
    TransactionsModel(
      true,
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
    ),
    TransactionsModel(
      false,
      title: 'Landing Page project',
      date: '13 Apr, 2022 ',
      amount: r'$2,000',
    ),
    TransactionsModel(
      false,
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TransactionItem(transactionsModel: item[index]);
        },
        itemCount: item.length);
  }
}
