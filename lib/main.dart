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
  int rightDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: mainPage,
    );
  }

  Widget mainPage = Center(
    child: Row(
      children: <Widget>[
        Expanded(
          child: Image(
              image: AssetImage('images/dice1.png')
          ),
        ),
        Expanded(
          child: Image(
              image: AssetImage('images/dice2.png')
          ),
        ),
      ],
    ),
  );
}