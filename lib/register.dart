
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Back!!!', 
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
        toolbarHeight: 80,
      ),
      body: Form(
        child: Column(
          children: [
            Row(
              children: [
                const Text("Username"),
                const SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your username',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      );
  }
}