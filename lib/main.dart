import 'package:flutter/material.dart';
import 'register.dart';
import 'screens/home.dart';
import 'image_grid.dart'; // Adjust file name to match your project

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const RegisterScreen(),
        '/home': (context) => const GambleDice(),
        '/grid': (context) => const ImageGrid(),
      },
    );
  }
}