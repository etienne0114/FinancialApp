import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/financial_manager_provider.dart';
import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<FinancialManagerProvider>(context);
    var transactions = provider.transactions;

    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return TransactionItem(transaction: transactions[index]);
      },
    );
  }
}
