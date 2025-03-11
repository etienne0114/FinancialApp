import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;

  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Amount: ${transaction.amount}'),
      subtitle: Text('Category: ${transaction.category}\nDate: ${transaction.date}'),
    );
  }
}
