import 'package:flutter/material.dart';

class ImageGrid extends StatelessWidget {
  const ImageGrid({super.key});

  final List<String> imagePaths = const [
    'images/dice-1.png',
    'images/dice-2.png',
    'images/dice-3.png',
    'images/dice-4.png',
    'images/dice-5.png',
    'images/dice-6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text(
          'Image Grid',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: imagePaths
            .map<Widget>((String path) => Image.asset(path))
            .toList(),
      ),
    );
  }
}
