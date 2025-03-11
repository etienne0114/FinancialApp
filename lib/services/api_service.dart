import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  Future<List<Map<String, dynamic>>> getTransactions() async {
    final response = await http.get(
      Uri.parse('https://api.example.com/transactions'),
      headers: {'Authorization': 'Bearer YOUR_API_TOKEN'},
    );

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(json.decode(response.body));
    } else {
      throw Exception('Failed to load transactions');
    }
  }
}
