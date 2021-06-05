import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[700],
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          changeBall();
        },
        child: Image.asset(
          'images/ball$ballNumber.png',
        ),
      ),
    );
  }

  void changeBall() {
    return setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
