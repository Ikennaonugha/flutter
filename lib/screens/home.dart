import 'dart:math';
import 'package:flutter/material.dart';

class GambleDice extends StatefulWidget {
  const GambleDice({super.key});

  @override
  State<GambleDice> createState() => _GambleDiceState();
}

class _GambleDiceState extends State<GambleDice> {
  int diceNo = 1; // Added missing semicolon

  void rollDice() {
    setState(() {
      // Generates a random number between 1 and 6
      diceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Game"),
        backgroundColor: Colors.purple,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Let's Play",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Image.asset(
                "images/dice-$diceNo.png",
                height: 150,
                width: 150,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: rollDice,
                child: const Text("Roll Dice"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigates to ImageGrid via named route
          Navigator.pushNamed(context, '/grid');
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.skip_next, color: Colors.white),
      ),
    );
  }
}