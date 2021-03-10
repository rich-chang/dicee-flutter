import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey.shade400,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mainPage;
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
              image: AssetImage('images/dice3.png')
          ),
        ),
      ],
    ),
  );
}