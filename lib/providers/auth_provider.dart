import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  User? _user;

  User? get user => _user;

  Future<void> login(String email, String password) async {
    var authService = AuthService();
    await authService.login(email, password);
    _user = FirebaseAuth.instance.currentUser;
    notifyListeners();
  }

  Future<void> signup(String email, String password) async {
    var authService = AuthService();
    await authService.signup(email, password);
    _user = FirebaseAuth.instance.currentUser;
    notifyListeners();
  }
}
