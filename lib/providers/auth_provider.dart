import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  User? _user;

  User? get user => _user;

  AuthProvider() {
    _user = _authService.currentUser;
  }

  Future<bool> login(String email, String password) async {
    try {
      // Lógica de inicio de sesión
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true; // Inicio de sesión exitoso
    } catch (e) {
      // Manejo de errores
      return false; // Error en el inicio de sesión
    }
  }

  Future<void> register(String email, String password) async {
    _user = await _authService.signUp(email, password);
    notifyListeners();
  }

  Future<void> logout() async {
    await _authService.signOut();
    _user = null;
    notifyListeners();
  }
}
