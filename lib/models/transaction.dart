class Transaction {
  final int id;
  final double amount;
  final String date;
  final String type;
  final String category;

  Transaction({
    required this.id,
    required this.amount,
    required this.date,
    required this.type,
    required this.category,
  });
}
