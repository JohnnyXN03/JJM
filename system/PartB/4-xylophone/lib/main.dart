import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: FlatButton(
                      onPressed: (){
                        final player = AudioCache();
                        player.play('notes/note1.wav');
                      },
                      child: null,
                      color: Colors.green,
                    )
                ),
                Expanded(
                    child: FlatButton(
                      onPressed: (){
                        final player = AudioCache();
                        player.play('notes/note2.wav');
                      },
                      child: null,
                      color: Colors.red,
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
}

