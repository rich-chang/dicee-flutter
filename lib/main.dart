import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey.shade400,
        ),
        body: DiceMainPage(),
      ),
    ),
  );
}

class DiceMainPage extends StatefulWidget {
  @override
  _DiceMainPageState createState() => _DiceMainPageState();
}

class _DiceMainPageState extends State<DiceMainPage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeDiceFace();
                    print('Press leftDiceNumber = $leftDiceNumber');
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')
              ),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                      print('Press rightDiceNumber = $rightDiceNumber');
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')
              ),
            ),
          ],
        ),
      );
  }
}