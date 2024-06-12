import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Ball());
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(4) + 1;
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}
