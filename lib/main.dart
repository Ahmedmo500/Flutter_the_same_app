// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_print, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'dart:math';

var startText = 'Choose a picture';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('Same Ball'),
        backgroundColor: Colors.indigo[800],
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  // lIN is shortcut for Left Image Number
  int lIN = 1;
  // rIN is shortcut for Right Image Number
  int rIN = 1;
  //win Sound effect
  void creatRandomNumber() {
    lIN = Random().nextInt(8) + 1;
    rIN = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          lIN == rIN ? 'Ahmed 3mk :)' : 'Try again',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'Roboto',
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      creatRandomNumber();
                    });
                  },
                  child: Image.asset('images/image-$lIN.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      creatRandomNumber();
                    });
                  },
                  child: Image.asset('images/image-$rIN.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
