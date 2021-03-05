import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int first_dice_value = 1;
  int second_dice_value = 2;

  void updateDiceValue() {
    setState(() {
      first_dice_value = Random().nextInt(6) + 1;
      second_dice_value = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: Colors.black),
      home: Scaffold(
        body: Center(
          child: Row(children: [
            Expanded(
                child: FlatButton(
                    child:
                        Image.asset('assets/images/dice$first_dice_value.png'),
                    onPressed: () {
                      updateDiceValue();
                    })),
            SizedBox(
              width: 50,
            ),
            Expanded(
                child: FlatButton(
                    child:
                        Image.asset('assets/images/dice$second_dice_value.png'),
                    onPressed: () {
                      updateDiceValue();
                    }))
          ]),
        ),
      ),
    );
  }
}
