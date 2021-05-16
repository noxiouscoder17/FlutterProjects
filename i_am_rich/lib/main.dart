import 'package:flutter/material.dart';

void main() {
  //main function is the entry point where the program starts
  runApp(
    MaterialApp(
      //Material App is a design style/concept which was created by google
      home: Scaffold(
        backgroundColor: Colors.blueGrey[400],
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('Images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
