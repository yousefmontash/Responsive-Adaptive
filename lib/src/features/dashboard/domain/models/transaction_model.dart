class TransactionModel {
  final String purpose, date, value;
  final bool isWithdrawal;

  const TransactionModel({required this.purpose, required this.date, required this.value, required this.isWithdrawal});
}
