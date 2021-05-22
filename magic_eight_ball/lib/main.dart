import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballFace = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Text('Magic 8 Ball'),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue[600],
          padding: EdgeInsets.all(20.0),
          child: TextButton(
            onPressed: () {
              setState(() {
                ballFace = Random().nextInt(5) + 1;
              });
            },
            child: Image(
              image: AssetImage('images/ball$ballFace.png'),
            ),
          ),
        ),
      ),
    );
  }
}
