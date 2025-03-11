import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/financial_manager_provider.dart';
import '../models/transaction.dart';
import '../widgets/transaction_list.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<FinancialManagerProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Financial Manager'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Monthly Income: ${provider.monthlyIncome}'),
                Text('Monthly Expenses: ${provider.monthlyExpenses}'),
                SizedBox(height: 20),
                TextField(
                  controller: _amountController,
                  decoration: InputDecoration(labelText: 'Amount'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: _categoryController,
                  decoration: InputDecoration(labelText: 'Category'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    double amount = double.parse(_amountController.text);
                    String category = _categoryController.text;
                    var transaction = Transaction(
                      id: DateTime.now().millisecondsSinceEpoch,
                      amount: amount,
                      date: DateTime.now().toIso8601String(),
                      type: 'Expense',
                      category: category,
                    );
                    provider.addTransaction(transaction);
                    _amountController.clear();
                    _categoryController.clear();
                  },
                  child: Text('Add Transaction'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: provider.checkExpenses,
                  child: Text('Check Expenses'),
                ),
              ],
            ),
          ),
          Expanded(
            child: TransactionList(),
          ),
        ],
      ),
    );
  }
}
