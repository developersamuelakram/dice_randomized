import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
        backgroundColor: Colors.orange,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;
  void onChanged() {
    setState(() {
      var random = new Random();
      leftDiceNumber = random.nextInt(6) + 1; // 1 to six
      rightDiceNumber = random.nextInt(6) + 1; // 1 to six
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  onChanged();
                },
                child: Image.asset('assets/dice$leftDiceNumber.png'),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  onChanged();
                },
                child: Image.asset('assets/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
