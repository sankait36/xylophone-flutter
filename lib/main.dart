import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color keyColor, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: keyColor,
        onPressed: () {
          playSound(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyColor: Colors.red, noteNumber: 1),
              buildKey(keyColor: Colors.orange, noteNumber: 2),
              buildKey(keyColor: Colors.yellow, noteNumber: 3),
              buildKey(keyColor: Colors.green, noteNumber: 4),
              buildKey(keyColor: Colors.blue, noteNumber: 5),
              buildKey(keyColor: Colors.indigo, noteNumber: 6),
              buildKey(keyColor: Colors.indigo.shade900, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
