import 'package:flutter/material.dart';

import 'package:my_quiz_app/Questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int questionNum = 0;
  int currentScore = 0;
  Questions questions = Questions();

  updateScore(bool a) {
    setState(() {
      if (questions.questionBank[questionNum].ans == a) {
        currentScore++;
      }
      if (questionNum == questions.questionBank.length - 1) {
        questionNum = 0;
      } else {
        questionNum++;
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ APP"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions.questionBank[questionNum].ques,
              style: TextStyle(fontSize: 20.0),
            ),
            RaisedButton(
              onPressed: () {
                updateScore(true);
              },
              child: Text("true"),
            ),
            RaisedButton(
              onPressed: () {
                updateScore(false);
              },
              child: Text("false"),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("current score is $currentScore"),
            )
          ],
        ),
      ),
    );
  }
}
