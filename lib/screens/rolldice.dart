import 'dart:math';
import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  @override
  int activeDiceFace = 6;
  List<String> diceImage = [
    'https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExNTFpZHZhZWtmMWVzODNiaWZyazdhenYwNXExeGs0d3BjaXN0dDFwOSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/tfbO3qJ5XlDaOfGELj/giphy.gif',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Dice-2.svg/2048px-Dice-2.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Dice-3.svg/557px-Dice-3.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Dice-4.svg/557px-Dice-4.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Dice-5.svg/640px-Dice-5.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Dice-6.svg/1200px-Dice-6.svg.png',
    'https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExNTFpZHZhZWtmMWVzODNiaWZyazdhenYwNXExeGs0d3BjaXN0dDFwOSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/tfbO3qJ5XlDaOfGELj/giphy.gif',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.purple,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Roll Dice',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.network(
                diceImage[activeDiceFace],
                // color: Colors.amber.shade800,
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  var ranNum = Random().nextInt(6);
                  setState(() {
                    activeDiceFace = ranNum;
                  });
                  print('button pressed');
                },
                child: Text(
                  'Roll!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
