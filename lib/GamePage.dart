import 'dart:math';

import 'package:flutter/material.dart';

class ManishApp extends StatefulWidget {
  @override
  _ManishAppState createState() => _ManishAppState();
}

class _ManishAppState extends State<ManishApp> {
  //_____________Images harli declare garako
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceImage;
  //_______App khulda first image one hunxa
  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
    });
  }

  //___________Dice roll
  void rollDice() {
    var random = (1 + Random().nextInt(6));
    AssetImage newImage;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: diceImage,
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 100,
            ),
            FlatButton(
              onPressed: rollDice,
              child: Text("Roll!"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
