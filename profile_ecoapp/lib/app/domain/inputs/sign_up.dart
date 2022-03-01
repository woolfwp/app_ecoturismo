import 'package:firebase_auth/firebase_auth.dart';

class SignUpData {
  final String name, lastname, edad, email, password;
  final int peso, altura;

  SignUpData({
    required this.name,
    required this.lastname,
    required this.edad,
    required this.email,
    required this.password,
    required this.peso,
    required this.altura,
  });
}

class SignUpResponse {
  final String? error;
  final User? user;

  SignUpResponse(this.error, this.user);
}
