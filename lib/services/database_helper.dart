import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class DatabaseHelper {
  static Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'financial_manager.db'),
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE transactions(id INTEGER PRIMARY KEY, amount REAL, date TEXT, type TEXT, category TEXT)',
        );
        await database.execute(
          'CREATE TABLE income(id INTEGER PRIMARY KEY, amount REAL, month TEXT)',
        );
      },
      version: 1,
    );
  }
}
