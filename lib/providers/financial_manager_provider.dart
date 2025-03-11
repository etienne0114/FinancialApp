import 'package:flutter/material.dart';
import '../models/transaction.dart';

class FinancialManagerProvider with ChangeNotifier {
  double _monthlyIncome = 0;
  double _monthlyExpenses = 0;
  final List<Transaction> _transactions = [];

  double get monthlyIncome => _monthlyIncome;
  double get monthlyExpenses => _monthlyExpenses;
  List<Transaction> get transactions => _transactions;

  void addTransaction(Transaction transaction) {
    _transactions.add(transaction);
    _monthlyExpenses += transaction.amount;
    notifyListeners();
  }

  void setMonthlyIncome(double amount) {
    _monthlyIncome = amount;
    notifyListeners();
  }

  void checkExpenses() {
    if (_monthlyExpenses > _monthlyIncome) {
      // Show warning to the user
    }
  }
}
