class TransactionsModel {
  final String title, date, amount;

  final bool isWithdrawal;
  const TransactionsModel(
    this.isWithdrawal, {
    required this.title,
    required this.date,
    required this.amount,
  });
}
