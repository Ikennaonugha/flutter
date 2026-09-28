import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'image_grid.dart';

void main() {
  runApp(const GambleDice());
}


class GambleDice extends StatelessWidget {
  const GambleDice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const GambleDice(),
        '/grid': (context) => const ImageGrid(),
      },
    );
  }
}