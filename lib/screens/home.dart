import 'package:flutter/material.dart';
import '../logic/random.dart';

class GambleDice extends StatefulWidget {
  const GambleDice({super.key});

  @override
  State<GambleDice> createState() => _GambleDiceState();
}

class _GambleDiceState extends State<GambleDice> {
  int diceNo = 1
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Let's Play"),
            Image.asset("images/dice-$diceNo.png"),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  diceNo = randomVal();
                });
              }, child: Text("Roll Dice"))
          ],
        )
      ),
    );
  }
}