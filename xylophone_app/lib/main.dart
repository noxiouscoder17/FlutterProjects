import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              tuneButton(1, Colors.red),
              tuneButton(2, Colors.orange),
              tuneButton(3, Colors.yellow),
              tuneButton(4, Colors.green),
              tuneButton(5, Colors.teal),
              tuneButton(6, Colors.blue),
              tuneButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  void playTune(int num) {
    final player = AudioCache();
    player.play("note$num.wav");
  }

  Widget tuneButton(int num, Color color) {
    return Expanded(
      child: ColoredBox(
        color: color,
        child: TextButton(
          onPressed: () {
            playTune(num);
          },
          child: SizedBox(),
        ),
      ),
    );
  }
}
