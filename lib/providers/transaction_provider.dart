import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../services/api_service.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  Future<void> fetchTransactions() async {
    var apiService = ApiService();
    var response = await apiService.getTransactions();
    
    // Assuming the response is a List<Map<String, dynamic>>
    _transactions = response.map((data) => Transaction(
      id: data['id'],
      amount: data['amount'],
      date: data['date'],
      type: data['type'],
      category: data['category'],
    )).toList();
    notifyListeners();
  }

  void addTransaction(Transaction transaction) {
    _transactions.add(transaction);
    notifyListeners();
  }
}
