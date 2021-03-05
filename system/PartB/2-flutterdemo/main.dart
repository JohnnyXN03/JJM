import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text("First Lab"),
            ),
            body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "One",
                  style: TextStyle(fontSize: 40, color: Colors.blue),
                ),
                Text(
                  "Two",
                  style: TextStyle(fontSize: 40, color: Colors.green),
                ),
                Text(
                  "Three",
                  style: TextStyle(fontSize: 40, color: Colors.red),
                ),
              ]),
            ]),
          ),
        ));
  }
}
