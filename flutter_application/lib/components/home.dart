import 'package:flutter/material.dart';
import 'body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ninja ID Card',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.green[900],
        ),
        body: const Body());
  }
}
