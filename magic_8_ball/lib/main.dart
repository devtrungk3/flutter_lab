import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ask Me Anything',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue,
      body: Ball()
    );
  }
  
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
    return Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        )
    );
  }
}